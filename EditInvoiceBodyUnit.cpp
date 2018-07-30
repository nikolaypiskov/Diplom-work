//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "EditInvoiceBodyUnit.h"
#include "InvoiceUnit.h"
#include "ArticleUnit.h"
#include "ServiceUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TEditInvoiceBodyForm *EditInvoiceBodyForm;
//---------------------------------------------------------------------------
__fastcall TEditInvoiceBodyForm::TEditInvoiceBodyForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TEditInvoiceBodyForm::RadioGroup1Click(TObject *Sender)
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
void __fastcall TEditInvoiceBodyForm::BitBtnClick(TObject *Sender)
{
InvoiceID = InvoiceForm->IHQuery->FieldByName("ID")->AsString;
if(IsInsert)
{
    EditInvoiceBodyForm->InsertQuery->Close();
    EditInvoiceBodyForm->InsertQuery->SQL->Text =
   " INSERT INTO INVOICE_BODY(ID, ARTICLE_ID, SERVICE_ID, FLAG_AS, QUANTITY, PRICE, INVOICEH_ID) VALUES   "
   " ( :ParamID, :ParamA, :ParamS, :ParamF, :ParamQ, :ParamP, :ParamH ) ";
    InvoiceBodyID = InvoiceForm->IBSP->ParamByName("ID")->AsString;
    InsertQuery->ParamByName("ParamID")->AsString = InvoiceBodyID;
    InsertQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    InsertQuery->ParamByName("ParamH")->AsString = InvoiceID;
    InsertQuery->ParamByName("ParamP")->AsString = Edit2->Text;
    InsertQuery->ParamByName("ParamF")->AsInteger = RadioGroup1->ItemIndex;
   if(RadioGroup1->ItemIndex == 1)
     {
      InsertQuery->ParamByName("ParamS")->AsString = SAID;
      InsertQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      InsertQuery->ParamByName("ParamS")->Clear();
      InsertQuery->ParamByName("ParamA")->AsString = SAID;
     }
    InsertQuery->Prepare();
    InsertQuery->ExecSQL();
    ModalResult = mrOk;
    }
else
 {
  InvoiceBodyID = InvoiceForm->IBQuery->FieldByName("ID")->AsString;
    UpdateQuery->Close();
    UpdateQuery->SQL->Text =
    " UPDATE INVOICE_BODY "
    " SET QUANTITY = :ParamQ, ARTICLE_ID = :ParamA, SERVICE_ID = :ParamS, FLAG_AS = :ParamF,INVOICEH_ID = :ParamH, PRICE = :ParamP "
    " WHERE ID = :ParamID ";
    UpdateQuery->ParamByName("ParamID")->AsString = InvoiceBodyID;
    UpdateQuery->ParamByName("ParamQ")->AsString = Edit1->Text;
    UpdateQuery->ParamByName("ParamP")->AsString = Edit2->Text;
    UpdateQuery->ParamByName("ParamH")->AsString = InvoiceID;
    UpdateQuery->ParamByName("ParamF")->AsInteger = RadioGroup1->ItemIndex;
    if(RadioGroup1->ItemIndex == 1)
     {
      UpdateQuery->ParamByName("ParamS")->AsString = SAID;
      UpdateQuery->ParamByName("ParamA")->Clear();
     }
    else
     {
      UpdateQuery->ParamByName("ParamS")->Clear();
      UpdateQuery->ParamByName("ParamA")->AsString = SAID;
     }
    UpdateQuery->Prepare();
    UpdateQuery->ExecSQL();
    ModalResult = mrOk;
   }
   InvoiceForm->IHQuery->Close();
   InvoiceForm->IHQuery->Open();
   InvoiceForm->IBQuery->Last();
}
//---------------------------------------------------------------------------

