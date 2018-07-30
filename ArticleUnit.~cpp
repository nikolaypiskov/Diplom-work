//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ArticleUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TArticleForm *ArticleForm;
//---------------------------------------------------------------------------
__fastcall TArticleForm::TArticleForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TArticleForm::BitBtn1Click(TObject *Sender)
{
  FlagID = 0;
  ServiceID = NULL;
  ArticleID = IBTable1->FieldByName("ID")->AsInteger;
  ModalResult = mrOk;    
}
//---------------------------------------------------------------------------

