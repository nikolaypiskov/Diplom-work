//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditContractUnit.h"
#include "MainUnit.h"
#include "DMUnit.h"
#include "OrderUnit.h"
#include "NomenklaturesUnit.h"
#include "DeliveryUnit.h"
#include "ProtocolUnit.h"
#include "InvoiceUnit.h"
#include "ContractUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditContractForm *EditContractForm;
//---------------------------------------------------------------------------
__fastcall TEditContractForm::TEditContractForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------


void __fastcall TEditContractForm::BitBtn1Click(TObject *Sender)
{
ContragentID = ContragentQuery->FieldByName("ID")->AsString;

if(IsInsert)
{
   Query->Close();
   Query->SQL->Text = "SELECT NUMBER FROM GET_CONTRACT_NUMBER";
   Query->Open();

    EditContractForm->InsertContractQuery->Close();
    EditContractForm->InsertContractQuery->SQL->Text =
   " INSERT INTO CONTRACT(ID, CONTR_NR, CONTR_DATE, TERM, CONTRAGENT_ID, DESCRIPTION) VALUES   "
   " ( :ParamID, :ParamNR, :ParamD, :ParamTerm, :ParamC, :ParamDescr ) ";
    ContractID = ContractForm->ContractSP->ParamByName("ID")->AsString;
    InsertContractQuery->ParamByName("ParamID")->AsString = ContractID;
    InsertContractQuery->ParamByName("ParamNR")->AsString = Query->FieldByName("NUMBER")->AsString;
    InsertContractQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    InsertContractQuery->ParamByName("ParamTerm")->AsString = EditTerm->Text;
    InsertContractQuery->ParamByName("ParamC")->AsString = ContragentID;
    InsertContractQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    InsertContractQuery->Prepare();
    InsertContractQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
    ContractID = ContractForm->IBQuery1->FieldByName("ID")->AsString;
    EditContractForm->UpdateContractQuery->Close();
    EditContractForm->UpdateContractQuery->SQL->Text =
    " UPDATE CONTRACT "
    " SET CONTR_NR = :ParamNR, CONTR_DATE = :ParamD, TERM = :ParamTerm, CONTRAGENT_ID = :ParamC, DESCRIPTION = :ParamDescr "
    " WHERE ID = :ParamID ";
    UpdateContractQuery->ParamByName("ParamID")->AsString = ContractID;
    UpdateContractQuery->ParamByName("ParamNR")->AsString = EditNR->Text;
    UpdateContractQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    UpdateContractQuery->ParamByName("ParamTerm")->AsString = EditTerm->Text;
    UpdateContractQuery->ParamByName("ParamC")->AsString = ContragentID;
    UpdateContractQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    UpdateContractQuery->Prepare();
    UpdateContractQuery->ExecSQL();
    ModalResult = mrOk;
   }
}

//---------------------------------------------------------------------------


void __fastcall TEditContractForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now();
}
//---------------------------------------------------------------------------

