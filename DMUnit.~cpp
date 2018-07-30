//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "DMUnit.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TDM *DM;
//---------------------------------------------------------------------------
__fastcall TDM::TDM(TComponent* Owner)
        : TDataModule(Owner)
{
}
//---------------------------------------------------------------------------
bool __fastcall TDM::SelectQuery(AnsiString sql)
{
  Query->Close();
  Query->SQL->Text = sql;
  try
   {
    Query->Prepare();
    Query->Open();
   }
  catch(Exception &E)
   {
    ShowMessage("Грешка при изпълнение на заявка към базата данни.\nСистемно съобщение:\n" + E. Message);
    return false;
   }
  return true;
}






