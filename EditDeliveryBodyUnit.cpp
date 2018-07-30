//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditDeliveryBodyUnit.h"
#include "DeliveryUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditDeliveryBodyForm *EditDeliveryBodyForm;
//---------------------------------------------------------------------------
__fastcall TEditDeliveryBodyForm::TEditDeliveryBodyForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditDeliveryBodyForm::BitBtnClick(TObject *Sender)
{
 ArticleID = Article->FieldByName("ID")->AsString;
 DeliveryID = DeliveryForm->DHQuery->FieldByName("ID")->AsString;
if(IsInsert)
{
    EditDeliveryBodyForm->InsertQuery->Close();
    EditDeliveryBodyForm->InsertQuery->SQL->Text =
   " INSERT INTO DELIVERY_BODY(ID, QUANTITY, PRICE, ARTICLE_ID, DELIVERYH_ID) VALUES   "
   " ( :ParamID, :ParamQ, :ParamP, :ParamA, :ParamD ) ";
    DeliveryBodyID = DeliveryForm->DBSP->ParamByName("ID")->AsString;
    InsertQuery->ParamByName("ParamID")->AsString = DeliveryBodyID;
    InsertQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    InsertQuery->ParamByName("ParamP")->AsString = Edit2->Text;
    InsertQuery->ParamByName("ParamA")->AsString = ArticleID;
    InsertQuery->ParamByName("ParamD")->AsString = DeliveryID;
    InsertQuery->Prepare();
    InsertQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
{
    DeliveryBodyID = DeliveryForm->DBQuery->FieldByName("ID")->AsString;
    UpdateQuery->Close();
    UpdateQuery->SQL->Text =
    " UPDATE DELIVERY_BODY "
    " SET QUANTITY = :ParamQ, PRICE = :ParamP, ARTICLE_ID = :ParamA, DELIVERYH_ID = :ParamD "
    " WHERE ID = :ParamID ";
    UpdateQuery->ParamByName("ParamID")->AsString = DeliveryBodyID;
    UpdateQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    UpdateQuery->ParamByName("ParamP")->AsString = Edit2->Text;
    UpdateQuery->ParamByName("ParamA")->AsString = ArticleID;
    UpdateQuery->ParamByName("ParamD")->AsString = DeliveryID;
    UpdateQuery->Prepare();
    UpdateQuery->ExecSQL();
    ModalResult = mrOk;
   }
   DeliveryForm->DHQuery->Close();
   DeliveryForm->DHQuery->Open();
   DeliveryForm->DBQuery->Last();
}
//---------------------------------------------------------------------------
