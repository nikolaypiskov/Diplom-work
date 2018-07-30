//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditOrderUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditOrderForm *EditOrderForm;
//---------------------------------------------------------------------------
__fastcall TEditOrderForm::TEditOrderForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditOrderForm::BitBtnClick(TObject *Sender)
{
ModalResult = mrOk;
  ContragentID = ContragentQuery->FieldByName("ID")->AsString;

if(IsInsert)
{
   Query->Close();
   Query->SQL->Text = "SELECT NUMBER FROM GET_ORDER_NUMBER";
   Query->Open();

    EditOrderForm->InsertOrderQuery->Close();
    EditOrderForm->InsertOrderQuery->SQL->Text =
   " INSERT INTO ORDER_HEAD(ID, ORDER_NR, ORDER_DATE, CONTRAGENT_ID, DESCRIPTION) VALUES   "
   " ( :ParamID, :ParamNR, :ParamD, :ParamC, :ParamDescr ) ";
    OrderID = OrderForm->OrderSP->ParamByName("ID")->AsString;
    InsertOrderQuery->ParamByName("ParamID")->AsString = OrderID;
    InsertOrderQuery->ParamByName("ParamNR")->AsString = Query->FieldByName("NUMBER")->AsString;
    InsertOrderQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    InsertOrderQuery->ParamByName("ParamC")->AsString = ContragentID;
    InsertOrderQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    InsertOrderQuery->Prepare();
    InsertOrderQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
    OrderID = OrderForm->OHQuery->FieldByName("ID")->AsString;
    UpdateOrderQuery->Close();
    UpdateOrderQuery->SQL->Text =
    " UPDATE ORDER_HEAD "
    " SET ORDER_NR = :ParamNR, ORDER_DATE = :ParamD, CONTRAGENT_ID = :ParamC, DESCRIPTION = :ParamDescr "
    " WHERE ID = :ParamID ";
    UpdateOrderQuery->ParamByName("ParamID")->AsString = OrderID;
    UpdateOrderQuery->ParamByName("ParamNR")->AsString = EditNR->Text;
    UpdateOrderQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    UpdateOrderQuery->ParamByName("ParamC")->AsString = ContragentID;
    UpdateOrderQuery->ParamByName("ParamDescr")->AsString = EditDescription->Text;
    UpdateOrderQuery->Prepare();
    UpdateOrderQuery->ExecSQL();
    ModalResult = mrOk;
   }
}

//---------------------------------------------------------------------------
void __fastcall TEditOrderForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now();        
}
//---------------------------------------------------------------------------

