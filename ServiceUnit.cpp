//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ServiceUnit.h"
#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TServiceForm *ServiceForm;
//---------------------------------------------------------------------------
__fastcall TServiceForm::TServiceForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TServiceForm::BitBtn1Click(TObject *Sender)
{
  FlagID = 1;
  ServiceID = IBTable1->FieldByName("ID")->AsInteger;
  ArticleID = NULL;
  ModalResult = mrOk;
}
//---------------------------------------------------------------------------
