//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "EditOrderUnit.h"
#include "EditOrderBodyUnit.h"
#include "OrderUnit.h"
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
TOrderForm *OrderForm;
//---------------------------------------------------------------------------
__fastcall TOrderForm::TOrderForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TOrderForm::BitBtn1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------






void __fastcall TOrderForm::N1Click(TObject *Sender)
{
TBookmark pos;
EditOrderForm->IsInsert = false;
EditOrderForm->OrderID = OHQuery->FieldByName("ID")->AsString;
EditOrderForm->EditNR->Text = OHQuery->FieldByName("ORDER_NR")->AsString;
EditOrderForm->DateTimePicker1->Date = OHQuery->FieldByName("ORDER_DATE")->AsDateTime;
EditOrderForm->EditDescription->Text = OHQuery->FieldByName("DESCRIPTION")->AsString;
if(EditOrderForm->ShowModal() == mrOk)
  {
  pos = OHQuery->GetBookmark();
  OHQuery->Close();
  OHQuery->Prepare();
  OHQuery->Open();
  OHQuery->GotoBookmark(pos);
  OHQuery->FreeBookmark(pos);
  }

}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::N2Click(TObject *Sender)
{
   EditOrderForm->IsInsert = true;
  OrderSP->Prepare();
  OrderSP->ExecProc();
  EditOrderForm->OrderID =  OrderSP->ParamByName("ID")->AsString;
        if(EditOrderForm->ShowModal() == mrOk)
        {
                OHQuery->Close();
                OHQuery->Prepare();
                OHQuery->Open();
                OHQuery->Last();
        }

}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::N3Click(TObject *Sender)
{
  TBookmark pos;
  EditOrderBodyForm->IsInsert = false;
EditOrderBodyForm->OrderBodyID = OBQuery->FieldByName("ID")->AsString;
EditOrderBodyForm->Edit1->Text = OBQuery->FieldByName("QUANTITY")->AsString;
if(EditOrderBodyForm->ShowModal() == mrOk)
  {
  pos = OBQuery->GetBookmark();
  OBQuery->Close();
  OBQuery->Prepare();
  OBQuery->Open();
  OBQuery->GotoBookmark(pos);
  OBQuery->FreeBookmark(pos);
  }
}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::N4Click(TObject *Sender)
{
  EditOrderBodyForm->IsInsert = true;
  OBSP->Prepare();
  OBSP->ExecProc();
  EditOrderBodyForm->OrderBodyID = OBSP->ParamByName("ID")->AsString;
        if(EditOrderBodyForm->ShowModal() == mrOk)
        {
        OBQuery->Close();
        OBQuery->Prepare();
        OBQuery->Open();
        OBQuery->Last();
        }
}
//---------------------------------------------------------------------------


void __fastcall TOrderForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now() - 30;
 ContragentID = "";
 ComboBox1->Items->Add("--- ������ ---");
 ComboBox1->ItemIndex = 0;
 if(DM->SelectQuery("SELECT NAME FROM CONTRAGENT ORDER BY NAME"))
  {
   DM->Query->First();
   while(!DM->Query->Eof)
    {
     ComboBox1->Items->Add(DM->Query->FieldByName("NAME")->AsString);
     DM->Query->Next();
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TOrderForm::BitBtn3Click(TObject *Sender)
{
  OHQuery->Close();
  OHQuery->SQL->Text =
  " SELECT                                                            "
  " OH.ID, OH.DESCRIPTION, OH.ORDER_DATE, OH.ORDER_NR, CR.NAME CONTRAGENT  "
  " FROM ORDER_HEAD OH                               "
  " JOIN CONTRAGENT CR ON OH.CONTRAGENT_ID = CR.ID "
  " WHERE OH.ORDER_DATE >= '" + FormatDateTime("dd.mm.yyyy",DateTimePicker1->Date) + "' ";

 if(ComboBox1->ItemIndex > 0)
   OHQuery->SQL->Text = OHQuery->SQL->Text + " AND CR.NAME = '" + ComboBox1->Text + "' ";

   OHQuery->Prepare();
   OHQuery->Open();

}
//---------------------------------------------------------------------------


void __fastcall TOrderForm::ComboBox1Change(TObject *Sender)
{
if(ComboBox1->Text == "--- ������ ---")
  {
   ContragentID = "";
  }
}
//---------------------------------------------------------------------------

