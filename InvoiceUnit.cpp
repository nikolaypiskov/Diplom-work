//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditInvoiceUnit.h"
#include "EditInvoiceBodyUnit.h"
#include "InvoiceUnit.h"
#include "ContractUnit.h"
#include "DeliveryUnit.h"
#include "DMUnit.h"
#include "InvoiceUnit.h"
#include "MainUnit.h"
#include "NomenklaturesUnit.h"
#include "ProtocolUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TInvoiceForm *InvoiceForm;
//---------------------------------------------------------------------------
__fastcall TInvoiceForm::TInvoiceForm(TComponent* Owner)
        : TForm(Owner)
{
}   ;
//---------------------------------------------------------------------------
void __fastcall TInvoiceForm::BitBtn1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------



void __fastcall TInvoiceForm::IBQueryCalcFields(TDataSet *DataSet)
{
 if(IBQuery->FieldByName("FLAG")->AsInteger == 1)
 {
   IBQuery->FieldByName("CALC_TYPE")->AsString = "артикул";
   IBQuery->FieldByName("TOTAL")->AsFloat = IBQuery->FieldByName("PRICE")->AsFloat *
                                          IBQuery->FieldByName("QUANTITY")->AsFloat;
 }
 else
 {
   IBQuery->FieldByName("CALC_TYPE")->AsString = "услуга";
   IBQuery->FieldByName("TOTAL")->AsFloat = IBQuery->FieldByName("PRICE")->AsFloat *
                                          IBQuery->FieldByName("QUANTITY")->AsFloat;
 }
}
//---------------------------------------------------------------------------


void __fastcall TInvoiceForm::N1Click(TObject *Sender)
{
 TBookmark pos;
 EditInvoiceForm->IsInsert = false;
EditInvoiceForm->InvoiceID = IHQuery->FieldByName("ID")->AsString;
EditInvoiceForm->EditNR->Text = IHQuery->FieldByName("INVOICE_NR")->AsString;
EditInvoiceForm->DateTimePicker1->Date = IHQuery->FieldByName("INVOICE_DATE")->AsDateTime;

if(EditInvoiceForm->ShowModal() == mrOk)
  {
  pos = IHQuery->GetBookmark();
  IHQuery->Close();
  IHQuery->Prepare();
  IHQuery->Open();
  IHQuery->GotoBookmark(pos);
  IHQuery->FreeBookmark(pos);
  }


}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::N2Click(TObject *Sender)
{
  EditInvoiceForm->IsInsert = true;
 InvoiceSP->Prepare();
 InvoiceSP->ExecProc();
 EditInvoiceForm->InvoiceID =  InvoiceSP->ParamByName("ID")->AsString;
        if(EditInvoiceForm->ShowModal() == mrOk)
        {
                IHQuery->Close();
                IHQuery->Prepare();
                IHQuery->Open();
                IHQuery->Last();
        }
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::N3Click(TObject *Sender)
{
TBookmark pos;
 EditInvoiceBodyForm->IsInsert = false;
EditInvoiceBodyForm->InvoiceBodyID = IBQuery->FieldByName("ID")->AsString;
EditInvoiceBodyForm->Edit1->Text = IBQuery->FieldByName("QUANTITY")->AsInteger;
EditInvoiceBodyForm->Edit2->Text = IBQuery->FieldByName("PRICE")->AsFloat;

if(EditInvoiceBodyForm->ShowModal() == mrOk)
  {
  pos = IBQuery->GetBookmark();
  IBQuery->Close();
  IBQuery->Prepare();
  IBQuery->Open();
  IBQuery->GotoBookmark(pos);
  IBQuery->FreeBookmark(pos);
  }
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::N4Click(TObject *Sender)
{
EditInvoiceBodyForm->IsInsert = true;
  IBSP->Prepare();
  IBSP->ExecProc();
  EditInvoiceBodyForm->InvoiceBodyID = IBSP->ParamByName("ID")->AsString;
        if(EditInvoiceBodyForm->ShowModal() == mrOk)
        {
                IBQuery->Close();
                IBQuery->Prepare();
                IBQuery->Open();
                IBQuery->Last();
        }


}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::IHQueryAfterScroll(TDataSet *DataSet)
{
float total = 0;
 IBQuery->DisableControls();
 IBQuery->Close();
 IBQuery->Prepare();
 IBQuery->Open();
 IBQuery->First();
 while(!IBQuery->Eof)
  {
   total += IBQuery->FieldByName("TOTAL")->AsFloat;
   IBQuery->Next();
  }
 TotalEdit->Caption = FormatFloat("0.000",total);
 IBQuery->EnableControls();
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::ComboBox2Change(TObject *Sender)
{
if(ComboBox1->Text == "--- всички ---")
  {
   StaffID = "";
  }        
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::ComboBox1Change(TObject *Sender)
{
if(ComboBox1->Text == "--- всички ---")
  {
   ContragentID = "";
  }
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::FormShow(TObject *Sender)
{
DateTimePicker1->Date = Now() - 30;
 ContragentID = "";
 StaffID = "";
 ComboBox1->Items->Add("--- всички ---");
 ComboBox1->ItemIndex = 0;
 ComboBox2->Items->Add("--- всички ---");
 ComboBox2->ItemIndex = 0;

 if(DM->SelectQuery("SELECT NAME FROM CONTRAGENT ORDER BY NAME"))
  {
   DM->Query->First();
   while(!DM->Query->Eof)
    {
     ComboBox1->Items->Add(DM->Query->FieldByName("NAME")->AsString);
     DM->Query->Next();
    }
  }
  if(DM->SelectQuery("SELECT LNAME FROM STAFF ORDER BY LNAME"))
  {
   DM->Query->First();
   while(!DM->Query->Eof)
    {
     ComboBox2->Items->Add(DM->Query->FieldByName("LNAME")->AsString);
     DM->Query->Next();
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TInvoiceForm::BitBtn3Click(TObject *Sender)
{
  IHQuery->Close();
  IHQuery->SQL->Text =
  " SELECT                                                            "
  " IH.ID, IH.INVOICE_DATE, IH.INVOICE_NR, CR.NAME CONTRAGENT, S.LNAME STAFF   "
  " FROM INVOICE_HEAD IH                                "
  " JOIN CONTRAGENT CR ON IH.CONTRAGENT_ID = CR.ID      "
  " JOIN STAFF S ON IH.STAFF_ID = S.ID "
  " WHERE IH.INVOICE_DATE >= '" + FormatDateTime("dd.mm.yyyy",DateTimePicker1->Date) + "' ";

 if(ComboBox1->ItemIndex > 0)
   IHQuery->SQL->Text = IHQuery->SQL->Text + " AND CR.NAME = '" + ComboBox1->Text + "' ";

 if(ComboBox2->ItemIndex > 0)
   IHQuery->SQL->Text = IHQuery->SQL->Text + " AND S.LNAME = '" + ComboBox2->Text + "' ";

   IHQuery->Prepare();
   IHQuery->Open();
}
//---------------------------------------------------------------------------
   
