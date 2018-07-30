//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditDeliveryUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditDeliveryForm *EditDeliveryForm;
//---------------------------------------------------------------------------
__fastcall TEditDeliveryForm::TEditDeliveryForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditDeliveryForm::BitBtn1Click(TObject *Sender)
{

OrderID = OrderQuery->FieldByName("ID")->AsString;

if(IsInsert)
{
   Query->Close();
   Query->SQL->Text = "SELECT NUMBER FROM GET_DELIVERY_NUMBER";
   Query->Open();
    InsertDeliveryQuery->Close();
    InsertDeliveryQuery->SQL->Text =
   " INSERT INTO DELIVERY_HEAD(ID, DELIV_NR, ORDERH_ID, DELIV_DATE) VALUES   "
   " ( :ParamID, :ParamNR, :ParamO, :ParamD ) ";
    DeliveryID = DeliveryForm->DeliverySP->ParamByName("ID")->AsString;
    InsertDeliveryQuery->ParamByName("ParamID")->AsString = DeliveryID;
    InsertDeliveryQuery->ParamByName("ParamNR")->AsString = Query->FieldByName("NUMBER")->AsString;;
    InsertDeliveryQuery->ParamByName("ParamO")->AsString = OrderID;
    InsertDeliveryQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;
    InsertDeliveryQuery->Prepare();
    InsertDeliveryQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
    DeliveryID = DeliveryForm->DHQuery->FieldByName("ID")->AsString;
    UpdateDeliveryQuery->Close();
    UpdateDeliveryQuery->SQL->Text =
    " UPDATE DELIVERY_HEAD "
    " SET DELIV_NR = :ParamNR, ORDERH_ID = :ParamO, DELIV_DATE = :ParamD "
    " WHERE ID = :ParamID ";
    UpdateDeliveryQuery->ParamByName("ParamID")->AsString = DeliveryID;
    UpdateDeliveryQuery->ParamByName("ParamNR")->AsString = EditDNR->Text;
    UpdateDeliveryQuery->ParamByName("ParamO")->AsString = OrderID;
    UpdateDeliveryQuery->ParamByName("ParamD")->AsDate = DateTimePicker1->Date;;
    UpdateDeliveryQuery->Prepare();
    UpdateDeliveryQuery->ExecSQL();
    ModalResult = mrOk;
   }
}
//---------------------------------------------------------------------------

void __fastcall TEditDeliveryForm::FormShow(TObject *Sender)
{
 DateTimePicker1->Date = Now();        
}
//---------------------------------------------------------------------------

