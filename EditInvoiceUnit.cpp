//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditInvoiceUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditInvoiceForm *EditInvoiceForm;
//---------------------------------------------------------------------------
__fastcall TEditInvoiceForm::TEditInvoiceForm(TComponent* Owner)
        : TForm(Owner)
{
} 
//---------------------------------------------------------------------------
void __fastcall TEditInvoiceForm::FormShow(TObject *Sender)
{
DateTimePicker1->Date = Now();
}
//---------------------------------------------------------------------------
void __fastcall TEditInvoiceForm::BitBtnClick(TObject *Sender)
{
 ContragentID = ContragentQuery->FieldByName("ID")->AsString;
 StaffID = StaffQuery->FieldByName("ID")->AsString;

if(IsInsert)
{
   Query->Close();
   Query->SQL->Text = "SELECT NUMBER FROM GET_INVOICE_NUMBER";
   Query->Open();

    EditInvoiceForm->InsertInvoiceQuery->Close();
    EditInvoiceForm->InsertInvoiceQuery->SQL->Text =
   " INSERT INTO INVOICE_HEAD(ID, INVOICE_NR, INVOICE_DATE, CONTRAGENT_ID, STAFF_ID) VALUES   "
   " ( :ParamID, :ParamNR, :ParamD, :ParamC, :ParamS ) ";
    //InvoiceID = InvoiceForm->InvoiceSP->ParamByName("ID")->AsString;
    InsertInvoiceQuery->ParamByName("ParamID")->AsString = InvoiceID;
    InsertInvoiceQuery->ParamByName("ParamNR")->AsString = Query->FieldByName("NUMBER")->AsString;
    InsertInvoiceQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    InsertInvoiceQuery->ParamByName("ParamC")->AsString = ContragentID;
    InsertInvoiceQuery->ParamByName("ParamS")->AsString = StaffID;
    InsertInvoiceQuery->Prepare();
    InsertInvoiceQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
   // InvoiceID = InvoiceForm->IHQuery->FieldByName("ID")->AsString;
    UpdateInvoiceQuery->Close();
    UpdateInvoiceQuery->SQL->Text =
    " UPDATE INVOICE_HEAD "
    " SET INVOICE_NR = :ParamNR, INVOICE_DATE = :ParamD, CONTRAGENT_ID = :ParamC, STAFF_ID = :ParamS "
    " WHERE ID = :ParamID ";
    UpdateInvoiceQuery->ParamByName("ParamID")->AsString = InvoiceID;
    UpdateInvoiceQuery->ParamByName("ParamNR")->AsString = EditNR->Text;
    UpdateInvoiceQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    UpdateInvoiceQuery->ParamByName("ParamC")->AsString = ContragentID;
    UpdateInvoiceQuery->ParamByName("ParamS")->AsString = StaffID;
    UpdateInvoiceQuery->Prepare();
    UpdateInvoiceQuery->ExecSQL();
    ModalResult = mrOk;
   }
}
//---------------------------------------------------------------------------
