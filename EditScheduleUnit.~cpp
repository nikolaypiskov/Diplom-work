//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditScheduleUnit.h"
#include "DMUnit.h"
#include "ProtocolUnit.h"
#include "MainUnit.h"
#include "ArticleUnit.h"
#include "ServiceUnit.h"
#include "NomenklaturesUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditScheduleForm *EditScheduleForm;
//---------------------------------------------------------------------------
__fastcall TEditScheduleForm::TEditScheduleForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

void __fastcall TEditScheduleForm::BitBtn1Click(TObject *Sender)
{
ModalResult = mrOk;
StaffID = IBTable1->FieldByName("ID")->AsString;
ContractID = IBTable2->FieldByName("ID")->AsString;

if(IsInsert)
{
    EditScheduleForm->InsertScheduleQuery->Close();
    EditScheduleForm->InsertScheduleQuery->SQL->Text =
   " INSERT INTO SCHEDULE(ID, SCHEDULE_DATE, DAYTIME, FLAG_AS, STAFF_ID, ARTICLE_ID, SERVICE_ID, CONTRACT_ID, DESCRIPTION) VALUES   "
   " ( :ParamID, :ParamDate, :ParamD, :ParamF, :ParamSt, :ParamA, :ParamS, :ParamC, :ParamDescr ) ";
    ScheduleID = MainForm->ScheduleSP->ParamByName("ID")->AsString;
    InsertScheduleQuery->ParamByName("ParamID")->AsString = ScheduleID;
    InsertScheduleQuery->ParamByName("ParamDate")->AsDate = DateTimePicker1->Date;
    InsertScheduleQuery->ParamByName("ParamD")->AsTime = DateTimePicker2->Time;
    if(RadioGroup1->ItemIndex == 1)
     {
      InsertScheduleQuery->ParamByName("ParamS")->AsString = SAID;
      InsertScheduleQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      InsertScheduleQuery->ParamByName("ParamS")->Clear();
      InsertScheduleQuery->ParamByName("ParamA")->AsString = SAID;
     }
    InsertScheduleQuery->ParamByName("ParamSt")->AsString = StaffID;
    InsertScheduleQuery->ParamByName("ParamC")->AsString = ContractID;
    InsertScheduleQuery->ParamByName("ParamDescr")->AsString = Edit1->Text;
    InsertScheduleQuery->Prepare();
    InsertScheduleQuery->ExecSQL();
    ProtocolForm->PBQuery->Close();
    ProtocolForm->PBQuery->Prepare();
    ProtocolForm->PBQuery->Open();
    ModalResult = mrOk;
    }
else
{
    ScheduleID = MainForm->ReportQuery->FieldByName("ID")->AsString;
    EditScheduleForm->UpdateScheduleQuery->Close();
    EditScheduleForm->UpdateScheduleQuery->SQL->Text =
    " UPDATE SCHEDULE "
    " SET SCHEDULE_DATE = :ParamDate, DAYTIME = :ParamD, FLAG_AS = :ParamF, "
    " STAFF_ID = :ParamSt, ARTICLE_ID = :ParamA, SERVICE_ID = :ParamS,      "
    " CONTRACT_ID = :ParamC, DESCRIPTION = :ParamDescr "
    " WHERE ID = :ParamID ";
    UpdateScheduleQuery->ParamByName("ParamID")->AsString = ScheduleID;
     UpdateScheduleQuery->ParamByName("ParamDate")->AsDate = DateTimePicker1->Date;
    UpdateScheduleQuery->ParamByName("ParamD")->AsTime = DateTimePicker2->Time;
   if(RadioGroup1->ItemIndex == 1)
     {
      UpdateScheduleQuery->ParamByName("ParamS")->AsString = SAID;
      UpdateScheduleQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      UpdateScheduleQuery->ParamByName("ParamS")->Clear();
      UpdateScheduleQuery->ParamByName("ParamA")->AsString = SAID;
     }
    UpdateScheduleQuery->ParamByName("ParamSt")->AsString = StaffID;
    UpdateScheduleQuery->ParamByName("ParamC")->AsString = ContractID;
    UpdateScheduleQuery->ParamByName("ParamDescr")->AsString = Edit1->Text;
    UpdateScheduleQuery->Prepare();
    UpdateScheduleQuery->ExecSQL();
    ModalResult = mrOk;
   }

}
//---------------------------------------------------------------------------


void __fastcall TEditScheduleForm::RadioGroup1Click(TObject *Sender)
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

