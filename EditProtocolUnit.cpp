//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditProtocolUnit.h"
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
TEditProtocolForm *EditProtocolForm;
//---------------------------------------------------------------------------
__fastcall TEditProtocolForm::TEditProtocolForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditProtocolForm::BitBtnClick(TObject *Sender)
{
ContragentID = ContragentQuery->FieldByName("ID")->AsString;

if(IsInsert)
{
   Query->Close();
   Query->SQL->Text = "SELECT NUMBER FROM GET_PROTOCOL_NUMBER";
   Query->Open();

    EditProtocolForm->InsertProtocolQuery->Close();
    EditProtocolForm->InsertProtocolQuery->SQL->Text =
   " INSERT INTO PROTOCOL_HEAD(ID, PROT_NR, PROT_DATE, CONTRAGENT_ID, DESCRIPTION) VALUES   "
   " ( :ParamID, :ParamNR, :ParamD, :ParamC, :ParamDescr ) ";
    ProtocolID = ProtocolForm->ProtocolSP->ParamByName("ID")->AsString;
    InsertProtocolQuery->ParamByName("ParamID")->AsString = ProtocolID;
    InsertProtocolQuery->ParamByName("ParamNR")->AsString = Query->FieldByName("NUMBER")->AsString;
    InsertProtocolQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    InsertProtocolQuery->ParamByName("ParamC")->AsString = ContragentID;
    InsertProtocolQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    InsertProtocolQuery->Prepare();
    InsertProtocolQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
    ProtocolID = ProtocolForm->PHQuery->FieldByName("ID")->AsString;
    UpdateProtocolQuery->Close();
    UpdateProtocolQuery->SQL->Text =
    " UPDATE PROTOCOL_HEAD "
    " SET PROT_NR = :ParamNR, PROT_DATE = :ParamD, CONTRAGENT_ID = :ParamC, DESCRIPTION = :ParamDescr "
    " WHERE ID = :ParamID ";
    UpdateProtocolQuery->ParamByName("ParamID")->AsString = ProtocolID;
    UpdateProtocolQuery->ParamByName("ParamNR")->AsString = EditNR->Text;
    UpdateProtocolQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    UpdateProtocolQuery->ParamByName("ParamC")->AsString = ContragentID;
    UpdateProtocolQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    UpdateProtocolQuery->Prepare();
    UpdateProtocolQuery->ExecSQL();
    ModalResult = mrOk;
   }
}
//---------------------------------------------------------------------------
void __fastcall TEditProtocolForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now();        
}
//---------------------------------------------------------------------------

