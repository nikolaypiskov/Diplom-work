//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditProtocolBodyUnit.h"
#include "ProtocolUnit.h"
#include "ArticleUnit.h"
#include "ServiceUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditProtocolBodyForm *EditProtocolBodyForm;
//---------------------------------------------------------------------------
__fastcall TEditProtocolBodyForm::TEditProtocolBodyForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditProtocolBodyForm::BitBtnClick(TObject *Sender)
{
ScheduleID = Schedule->FieldByName("ID")->AsString;
ProtocolID = ProtocolForm->PHQuery->FieldByName("ID")->AsString;
if(IsInsert)
{
    EditProtocolBodyForm->InsertQuery->Close();
    EditProtocolBodyForm->InsertQuery->SQL->Text =
   " INSERT INTO PROTOCOL_BODY(ID, SCHEDULE_ID, ARTICLE_ID, SERVICE_ID, FLAG_AS, DESCRIPTION, PROTOCOLH_ID) VALUES   "
   " ( :ParamID, :ParamD, :ParamA, :ParamS, :ParamF, :ParamDescr, :ParamH ) ";
    ProtocolBodyID = ProtocolForm->PBSP->ParamByName("ID")->AsString;
    InsertQuery->ParamByName("ParamID")->AsString = ProtocolBodyID;
    InsertQuery->ParamByName("ParamD")->AsString = ScheduleID;
    InsertQuery->ParamByName("ParamH")->AsString = ProtocolID;
    InsertQuery->ParamByName("ParamF")->AsInteger = RadioGroup1->ItemIndex;
    if(RadioGroup1->ItemIndex == 1)
     {
      InsertQuery->ParamByName("ParamS")->AsString = SAID;
      InsertQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      InsertQuery->ParamByName("ParamS")->Clear();
      InsertQuery->ParamByName("ParamA")->AsString = SAID;
     }
    InsertQuery->ParamByName("ParamDescr")->AsString = Edit1->Text;
    InsertQuery->Prepare();
    InsertQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
 {
  ProtocolBodyID = ProtocolForm->PBQuery->FieldByName("ID")->AsString;
    UpdateQuery->Close();
    UpdateQuery->SQL->Text =
    " UPDATE PROTOCOL_BODY "
    " SET SCHEDULE_ID = :ParamD, ARTICLE_ID = :ParamA, SERVICE_ID = :ParamS, FLAG_AS = :ParamF,PROTOCOLH_ID = :ParamH, DESCRIPTION = :ParamDescr "
    " WHERE ID = :ParamID ";
    UpdateQuery->ParamByName("ParamID")->AsString = ProtocolBodyID;
    UpdateQuery->ParamByName("ParamD")->AsString = ScheduleID;
    UpdateQuery->ParamByName("ParamH")->AsString = ProtocolID;
    UpdateQuery->ParamByName("ParamF")->AsInteger = RadioGroup1->ItemIndex;
    if(RadioGroup1->ItemIndex == 1)
     {
      UpdateQuery->ParamByName("ParamS")->AsString = SAID;
      UpdateQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      UpdateQuery->ParamByName("ParamS")->Clear();
      UpdateQuery->ParamByName("ParamA")->AsString = SAID;
     }
    UpdateQuery->ParamByName("ParamDescr")->AsString = Edit1->Text;
    UpdateQuery->Prepare();
    UpdateQuery->ExecSQL();
    ModalResult = mrOk;
   }
}
//---------------------------------------------------------------------------





void __fastcall TEditProtocolBodyForm::RadioGroup1Click(TObject *Sender)
{
 TModalResult mr;
 if(RadioGroup1->ItemIndex == 1)
   mr = ServiceForm->ShowModal();
 else
   mr = ArticleForm->ShowModal();

 if(mr != mrOk)
  {
   ArticleEdit->Text = "";
  }
 else
  {
   if(RadioGroup1->ItemIndex == 1)
    {
     ArticleEdit->Text = ServiceForm->IBTable1->FieldByName("NAME")->AsString;
     SAID = ServiceForm->IBTable1->FieldByName("ID")->AsString;
    }
   else
    {
     ArticleEdit->Text = ArticleForm->IBTable1->FieldByName("MODEL")->AsString;
     SAID = ArticleForm->IBTable1->FieldByName("ID")->AsString;
    }
  }
}
//---------------------------------------------------------------------------

void __fastcall TEditProtocolBodyForm::FormShow(TObject *Sender)
{
Schedule->Close();
DataSource3->Enabled = false;
DataSource3->Enabled = true;
Schedule->Open();
}
//---------------------------------------------------------------------------

