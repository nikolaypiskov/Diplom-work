//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
#include "EditProtocolUnit.h"
#include "EditProtocolBodyUnit.h"
#include "ProtocolUnit.h"
#include "ContractUnit.h"
#include "DeliveryUnit.h"
#include "DMUnit.h"
#include "InvoiceUnit.h"
#include "MainUnit.h"
#include "NomenklaturesUnit.h"
#include "OrderUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TProtocolForm *ProtocolForm;
//---------------------------------------------------------------------------
__fastcall TProtocolForm::TProtocolForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TProtocolForm::BitBtn1Click(TObject *Sender)
{
 Close();        
}
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::PBQueryCalcFields(TDataSet *DataSet)
{
 if(PBQuery->FieldByName("FLAG")->AsInteger == 1)
   PBQuery->FieldByName("TYPE")->AsString = "�������";
 else
   PBQuery->FieldByName("TYPE")->AsString = "������";
}
//---------------------------------------------------------------------------



void __fastcall TProtocolForm::IBTable1CalcFields(TDataSet *DataSet)
{
 if(IBTable1->FieldByName("FLAG_AS")->IsNull)
   return;
 if(IBTable1->FieldByName("FLAG_AS")->AsInteger == 1){
   IBTable1->FieldByName("TYPE")->AsString = "�������";
   IBTable1->FieldByName("NAME")->AsString = Article->FieldByName("MODEL")->AsString;
 }else{
   IBTable1->FieldByName("TYPE")->AsString = "������";
   IBTable1->FieldByName("NAME")->AsString = Service->FieldByName("NAME")->AsString;
   }
 }
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::IBTable1BeforePost(TDataSet *DataSet)
{
if(IBTable1->State == dsInsert){
        PBSP->Prepare();
        PBSP->ExecProc();
        IBTable1->FieldByName("ID")->AsInteger = PBSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------







void __fastcall TProtocolForm::N2Click(TObject *Sender)
{
  TBookmark pos;
  EditProtocolForm->IsInsert = false;
EditProtocolForm->ProtocolID = PHQuery->FieldByName("ID")->AsString;
EditProtocolForm->EditNR->Text = PHQuery->FieldByName("PROT_NR")->AsString;
EditProtocolForm->DateTimePicker1->Date = PHQuery->FieldByName("PROT_DATE")->AsDateTime;
EditProtocolForm->EditDescription->Text = PHQuery->FieldByName("DESCRIPTION")->AsString;
if(EditProtocolForm->ShowModal() == mrOk)
  {
  pos = PHQuery->GetBookmark();
  PHQuery->Close();
  PHQuery->Prepare();
  PHQuery->Open();
  PHQuery->GotoBookmark(pos);
  PHQuery->FreeBookmark(pos);
  }

}
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::N3Click(TObject *Sender)
{
 EditProtocolForm->IsInsert = true;
  ProtocolSP->Prepare();
  ProtocolSP->ExecProc();
  EditProtocolForm->ProtocolID =  ProtocolSP->ParamByName("ID")->AsString;
        if(EditProtocolForm->ShowModal() == mrOk)
        {
                PHQuery->Close();
                PHQuery->Prepare();
                PHQuery->Open();
                PHQuery->Last();
        }

}
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::N4Click(TObject *Sender)
{
   TBookmark pos;
     EditProtocolBodyForm->IsInsert = false;
EditProtocolBodyForm->ProtocolBodyID = PBQuery->FieldByName("ID")->AsString;
EditProtocolBodyForm->Edit1->Text = PBQuery->FieldByName("DESCRIPTION")->AsString;
if(EditProtocolBodyForm->ShowModal() == mrOk)
  {
  pos = PBQuery->GetBookmark();
  PBQuery->Close();
  PBQuery->Prepare();
  PBQuery->Open();
  PBQuery->GotoBookmark(pos);
  PBQuery->FreeBookmark(pos);
  }

}
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::N5Click(TObject *Sender)
{
 EditProtocolBodyForm->IsInsert = true;
  PBSP->Prepare();
  PBSP->ExecProc();
  EditProtocolBodyForm->ProtocolBodyID =  PBSP->ParamByName("ID")->AsString;
        if(EditProtocolBodyForm->ShowModal() == mrOk)
        {
                PBQuery->Close();
                PBQuery->Prepare();
                PBQuery->Open();
                PBQuery->Last();
        }

}
//---------------------------------------------------------------------------


void __fastcall TProtocolForm::ComboBox1Change(TObject *Sender)
{
if(ComboBox1->Text == "--- ������ ---")
  {
   ContragentID = "";
  }
}
//---------------------------------------------------------------------------

void __fastcall TProtocolForm::FormShow(TObject *Sender)
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

void __fastcall TProtocolForm::BitBtn3Click(TObject *Sender)
{
 PHQuery->Close();
  PHQuery->SQL->Text =
  " SELECT                                                            "
  "  PH.ID, PH.DESCRIPTION, PH.PROT_DATE, PH.PROT_NR,CR.NAME CONTRAGENT  "
  " FROM PROTOCOL_HEAD PH                              "
  " JOIN CONTRAGENT CR ON PH.CONTRAGENT_ID = CR.ID "
  " WHERE PH.PROT_DATE >= '" + FormatDateTime("dd.mm.yyyy",DateTimePicker1->Date) + "' ";

 if(ComboBox1->ItemIndex > 0)
   PHQuery->SQL->Text = PHQuery->SQL->Text + " AND CR.NAME = '" + ComboBox1->Text + "' ";

   PHQuery->Prepare();
   PHQuery->Open();
}
//---------------------------------------------------------------------------

