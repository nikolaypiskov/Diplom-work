//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DeliveryUnit.h"
#include "EditDeliveryUnit.h"
#include "EditDeliveryBodyUnit.h"
#include "ContractUnit.h"
#include "DMUnit.h"
#include "InvoiceUnit.h"
#include "MainUnit.h"
#include "NomenklaturesUnit.h"
#include "OrderUnit.h"
#include "ProtocolUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDeliveryForm *DeliveryForm;
//---------------------------------------------------------------------------
__fastcall TDeliveryForm::TDeliveryForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TDeliveryForm::BitBtn1Click(TObject *Sender)
{
 Close();
}
//---------------------------------------------------------------------------
void __fastcall TDeliveryForm::DHQueryAfterScroll(TDataSet *DataSet)
{
 float total = 0;
 DBQuery->DisableControls();
 DBQuery->Close();
 DBQuery->Prepare();
 DBQuery->Open();
 DBQuery->First();
 while(!DBQuery->Eof)
  {
   total += DBQuery->FieldByName("TOTAL")->AsFloat;
   DBQuery->Next();
  }
 TotalEdit->Caption = FormatFloat("0.000",total);
 DBQuery->EnableControls();
}
//---------------------------------------------------------------------------




void __fastcall TDeliveryForm::N1Click(TObject *Sender)
{
TBookmark pos;
EditDeliveryForm->IsInsert = false;
EditDeliveryForm->DeliveryID = DHQuery->FieldByName("ID")->AsString;
EditDeliveryForm->EditDNR->Text = DHQuery->FieldByName("DELIV_NR")->AsString;
EditDeliveryForm->DateTimePicker1->Date = DHQuery->FieldByName("DELIV_DATE")->AsDateTime;

if(EditDeliveryForm->ShowModal() == mrOk)
  {
  pos = DHQuery->GetBookmark();
  DHQuery->Close();
  DHQuery->Prepare();
  DHQuery->Open();
  DHQuery->GotoBookmark(pos);
  DHQuery->FreeBookmark(pos);
  }
}
//---------------------------------------------------------------------------

void __fastcall TDeliveryForm::N2Click(TObject *Sender)
{
   EditDeliveryForm->IsInsert = true;
 DeliverySP->Prepare();
 DeliverySP->ExecProc();
 EditDeliveryForm->DeliveryID =  DeliverySP->ParamByName("ID")->AsString;
        if(EditDeliveryForm->ShowModal() == mrOk)
        {
                DHQuery->Close();
                DHQuery->Prepare();
                DHQuery->Open();
                DHQuery->Last();
        }

}
//---------------------------------------------------------------------------

void __fastcall TDeliveryForm::N3Click(TObject *Sender)
{
 TBookmark pos;
 EditDeliveryBodyForm->IsInsert = false;
EditDeliveryBodyForm->DeliveryBodyID = DBQuery->FieldByName("ID")->AsString;
EditDeliveryBodyForm->Edit1->Text = DBQuery->FieldByName("QUANTITY")->AsString;
EditDeliveryBodyForm->Edit2->Text = DBQuery->FieldByName("PRICE")->AsString;

if(EditDeliveryBodyForm->ShowModal() == mrOk)
  {
  pos = DBQuery->GetBookmark();
  DBQuery->Close();
  DBQuery->Prepare();
  DBQuery->Open();
  DBQuery->GotoBookmark(pos);
  DBQuery->FreeBookmark(pos);
  }
}
//---------------------------------------------------------------------------

void __fastcall TDeliveryForm::N4Click(TObject *Sender)
{
 EditDeliveryBodyForm->IsInsert = true;
 DBSP->Prepare();
 DBSP->ExecProc();
 EditDeliveryBodyForm->DeliveryBodyID = DBSP->ParamByName("ID")->AsString;
        if(EditDeliveryBodyForm->ShowModal() == mrOk)
        {
                DBQuery->Close();
                DBQuery->Prepare();
                DBQuery->Open();
                DBQuery->Last();
        }
}
//---------------------------------------------------------------------------




void __fastcall TDeliveryForm::DBQueryCalcFields(TDataSet *DataSet)
{
DBQuery->FieldByName("TOTAL")->AsFloat = DBQuery->FieldByName("PRICE")->AsFloat *
                                          DBQuery->FieldByName("QUANTITY")->AsFloat;
}
//---------------------------------------------------------------------------

void __fastcall TDeliveryForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now() - 30;
 DateTimePicker2->Date = Now();
}
//---------------------------------------------------------------------------

void __fastcall TDeliveryForm::BitBtn3Click(TObject *Sender)
{
  DHQuery->Close();
  DHQuery->SQL->Text =
  " SELECT                                                            "
  "  DH.ID, DH.DELIV_DATE, DH.DELIV_NR, OH.ORDER_NR, OH.ORDER_DATE, OH.DESCRIPTION   "
  " FROM DELIVERY_HEAD DH                                "
  " JOIN ORDER_HEAD OH ON DH.ORDERH_ID =OH.ID "
  " WHERE OH.ORDER_DATE >= '" + FormatDateTime("dd.mm.yyyy",DateTimePicker1->Date) +
  "' AND DH.DELIV_DATE >= '" + FormatDateTime("dd.mm.yyyy",DateTimePicker2->Date) + "' ";                                                                               "' ";
   DHQuery->Prepare();
   DHQuery->Open();
}
//---------------------------------------------------------------------------

