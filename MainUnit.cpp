//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "MainUnit.h"
#include "EditScheduleUnit.h"
#include "DMUnit.h"
#include "StaffInvUnit.h"
#include "StockUnit.h"
#include "OrderUnit.h"
#include "NomenklaturesUnit.h"
#include "DeliveryUnit.h"
#include "ProtocolUnit.h"
#include "InvoiceUnit.h"
#include "ContractUnit.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TMainForm *MainForm;
//---------------------------------------------------------------------------
__fastcall TMainForm::TMainForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::N3Click(TObject *Sender)
{
      Close(); 
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::N15Click(TObject *Sender)
{
  OrderForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::NServiceMenuClick(TObject *Sender)
{
 int tag = static_cast<TMenuItem *>(Sender)->Tag;
 NomenklaturesForm->NPageControl->ActivePageIndex = tag;
 NomenklaturesForm->ShowModal();

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N16Click(TObject *Sender)
{
  DeliveryForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N18Click(TObject *Sender)
{
  ProtocolForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N17Click(TObject *Sender)
{
  InvoiceForm->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N14Click(TObject *Sender)
{
  ContractForm->ShowModal();
}
//---------------------------------------------------------------------------
void __fastcall TMainForm::RefreshBtnClick(TObject *Sender)
{
 AnsiString sql1, sql2;
 sql1 =
    " SELECT                 "
    "  S.ID,                 "
    "   S.SCHEDULE_DATE,     "
    "   S.DAYTIME,           "
    "   S.DESCRIPTION,       "
    "   S.STAFF_ID,          "
    "   S.ARTICLE_ID,        "
    "   S.SERVICE_ID,        "
    "   S.CONTRACT_ID,       "
    "   PB.ID PROTOCOL_ID,  "
    "   PH.PROT_NR ,        "
    "   T.FNAME,             "
    "   T.LNAME,             "
    "   T.POSITION_ID,       "
    "   P.NAME POSITION_NAME,     "
    "   CAST(A.MODEL AS VARCHAR(252)) NAME, "
    "   CAST(1 AS INTEGER) FLAG,            "
    "   C.TERM               "
    " FROM SCHEDULE S        "
    "  JOIN STAFF T ON S.STAFF_ID=T.ID       "
    "    JOIN POSITIONS P ON T.POSITION_ID = P.ID    "
    "       LEFT OUTER JOIN ARTICLE A ON S.ARTICLE_ID = A.ID  "
    "            JOIN CONTRACT C ON S.CONTRACT_ID = C.ID     "
    "                LEFT OUTER JOIN PROTOCOL_BODY PB ON PB.SCHEDULE_ID = S.ID "
    "                   LEFT OUTER JOIN PROTOCOL_HEAD PH ON PH.ID = PB.PROTOCOLH_ID        "
    " WHERE S.SERVICE_ID IS NULL          "
    " AND S.SCHEDULE_DATE >= '" + FormatDateTime("dd.mm.yyyy",FromDate->Date) +
    "' AND S.SCHEDULE_DATE <='" + FormatDateTime("dd.mm.yyyy",ToDate->Date) + "' ";

 sql2 =
    " SELECT        "
    "  S.ID,        "
    "   S.SCHEDULE_DATE,   "
    "   S.DAYTIME,         "
    "   S.DESCRIPTION,     "
    "   S.STAFF_ID,        "
    "   S.ARTICLE_ID,      "
    "   S.SERVICE_ID,      "
    "   S.CONTRACT_ID,     "
    "   PB.ID PROTOCOL_ID,  "
    "   PH.PROT_NR ,        "
    "   T.FNAME,           "
    "   T.LNAME,           "
    "   T.POSITION_ID,     "
    "   P.NAME POSITION_NAME,    "
    "   CAST(SR.NAME AS VARCHAR(252)) NAME,   "
    "   CAST(0 AS INTEGER) FLAG ,             "
    "   C.TERM              "
    " FROM SCHEDULE S       "
    "  JOIN STAFF T ON S.STAFF_ID=T.ID    "
    "    JOIN POSITIONS P ON T.POSITION_ID = P.ID   "
    "       LEFT OUTER JOIN SERVICE SR ON S.SERVICE_ID = SR.ID   "
    "            JOIN CONTRACT C ON S.CONTRACT_ID = C.ID       "
    "                LEFT OUTER JOIN PROTOCOL_BODY PB ON PB.SCHEDULE_ID = S.ID "
    "                   LEFT OUTER JOIN PROTOCOL_HEAD PH ON PH.ID = PB.PROTOCOLH_ID        "
    "                WHERE S.ARTICLE_ID IS NULL               "
    " AND S.SCHEDULE_DATE >= '" + FormatDateTime("dd.mm.yyyy",FromDate->Date) +
    "' AND S.SCHEDULE_DATE <='" + FormatDateTime("dd.mm.yyyy",ToDate->Date) + "' ";

 if(StaffID != "")
  {
   sql1 = sql1 +  " AND T.ID = " + StaffID;
   sql2 = sql2 +  " AND T.ID = " + StaffID;
  }

 ReportQuery->Close();
 ReportQuery->SQL->Text = sql1 + " UNION ALL " +  sql2;
 ReportQuery->Prepare();
 ReportQuery->Open();


}
//---------------------------------------------------------------------------


void __fastcall TMainForm::FormShow(TObject *Sender)
{
 FromDate->Date = Now() - 30;
 ToDate->Date = Now();
 StaffID = "";
 StaffCombo->Items->Add("--- всички ---");
 StaffCombo->ItemIndex = 0;
 if(DM->SelectQuery("SELECT FNAME, LNAME FROM STAFF ORDER BY FNAME, LNAME"))
  {
   DM->Query->First();
   while(!DM->Query->Eof)
    {
     StaffCombo->Items->Add(DM->Query->FieldByName("FNAME")->AsString + " " +
                            DM->Query->FieldByName("LNAME")->AsString);
     DM->Query->Next();
    }
  }
 RefreshBtnClick(Sender);
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::StaffComboChange(TObject *Sender)
{
 if(StaffCombo->Text == "--- всички ---")
  {
   StaffID = "";
   RefreshBtnClick(Sender);
   return;
  }
 AnsiString fname, lname;
 int space_pos = StaffCombo->Text.LastDelimiter(" ");
 fname = StaffCombo->Text.SubString(1,space_pos-1);
 lname = StaffCombo->Text.SubString(space_pos+1,StaffCombo->Text.Length());

 if(DM->SelectQuery("SELECT ID FROM STAFF WHERE FNAME = '" + fname + "' AND LNAME = '" + lname + "'"))
  {
   StaffID = DM->Query->FieldByName("ID")->AsString;
   RefreshBtnClick(Sender);
  }
}
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------

void __fastcall TMainForm::ReportQueryCalcFields(TDataSet *DataSet)
{
 if(ReportQuery->FieldByName("FLAG")->AsInteger == 1)
   ReportQuery->FieldByName("CALC_TYPE")->AsString = "артикул";
 else
   ReportQuery->FieldByName("CALC_TYPE")->AsString = "услуга";
 if(ReportQuery->FieldByName("PROTOCOL_ID")->IsNull)
   ReportQuery->FieldByName("PROTOCOL")->AsString = "Неприключен";
 else
   ReportQuery->FieldByName("PROTOCOL")->AsString = "Приключен";
}
//---------------------------------------------------------------------------



void __fastcall TMainForm::BitBtn2Click(TObject *Sender)
{
TBookmark pos;
EditScheduleForm->IsInsert = false;
EditScheduleForm->ScheduleID = ReportQuery->FieldByName("ID")->AsString;
EditScheduleForm->DateTimePicker1->Date = ReportQuery->FieldByName("SCHEDULE_DATE")->AsDateTime;
EditScheduleForm->Edit1->Text = ReportQuery->FieldByName("DESCRIPTION")->AsString;
if(EditScheduleForm->ShowModal() == mrOk)
  {
  pos = ReportQuery->GetBookmark();
  ReportQuery->Close();
  ReportQuery->Prepare();
  ReportQuery->Open();
  ReportQuery->GotoBookmark(pos);
  ReportQuery->FreeBookmark(pos);
  }        
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::BitBtn1Click(TObject *Sender)
{
  EditScheduleForm->IsInsert = true;
  ScheduleSP->Prepare();
  ScheduleSP->ExecProc();
  EditScheduleForm->ScheduleID =  ScheduleSP->ParamByName("ID")->AsString;
  EditScheduleForm->DateTimePicker1->Date = Now();
  EditScheduleForm->DateTimePicker2->Time = Now();
  EditScheduleForm->Edit1->Text = "";
  EditScheduleForm->ArticleEdit->Text = "";
        if(EditScheduleForm->ShowModal() == mrOk)
        {
                ReportQuery->Close();
                ReportQuery->Prepare();
                ReportQuery->Open();
                ReportQuery->Last();
        }

}
//---------------------------------------------------------------------------

void __fastcall TMainForm::I1Click(TObject *Sender)
{
  Form1->ShowModal();
}
//---------------------------------------------------------------------------

void __fastcall TMainForm::N19Click(TObject *Sender)
{
Form2->ShowModal();
}
//---------------------------------------------------------------------------

