//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditOrderBodyUnit.h"
#include "OrderUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditOrderBodyForm *EditOrderBodyForm;
//---------------------------------------------------------------------------
__fastcall TEditOrderBodyForm::TEditOrderBodyForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditOrderBodyForm::BitBtnClick(TObject *Sender)
{
ModalResult = mrOk;
 ArticleID = Article->FieldByName("ID")->AsString;
if(IsInsert)
{
    OrderID = OrderForm->OHQuery->FieldByName("ID")->AsString;
    EditOrderBodyForm->InsertQuery->Close();
    EditOrderBodyForm->InsertQuery->SQL->Text =
   " INSERT INTO ORDER_BODY(ID, QUANTITY, ARTICLE_ID, ORDERH_ID) VALUES   "
   " ( :ParamID, :ParamQ, :ParamA, :ParamO ) ";
    OrderBodyID = OrderForm->OBSP->ParamByName("ID")->AsString;
    InsertQuery->ParamByName("ParamID")->AsString = OrderBodyID;
    InsertQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    InsertQuery->ParamByName("ParamA")->AsString = ArticleID;
    InsertQuery->ParamByName("ParamO")->AsString = OrderID;
    InsertQuery->Prepare();
    InsertQuery->ExecSQL();
    EditOrderBodyForm->InsertQuery->Close();
    ModalResult = mrOk;
    }
else
{
    OrderID = OrderForm->OHQuery->FieldByName("ID")->AsString;
    OrderBodyID = OrderForm->OBQuery->FieldByName("ID")->AsString;
    UpdateQuery->Close();
    UpdateQuery->SQL->Text =
    " UPDATE ORDER_BODY "
    " SET QUANTITY = :ParamQ, ARTICLE_ID = :ParamA, ORDERH_ID = :ParamO "
    " WHERE ID = :ParamID ";
    UpdateQuery->ParamByName("ParamID")->AsString = OrderBodyID;
    UpdateQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    UpdateQuery->ParamByName("ParamA")->AsString = ArticleID;
    UpdateQuery->ParamByName("ParamO")->AsString = OrderID;
    UpdateQuery->Prepare();
    UpdateQuery->ExecSQL();
    UpdateQuery->Close();
    ModalResult = mrOk;
   }
}
//---------------------------------------------------------------------------
