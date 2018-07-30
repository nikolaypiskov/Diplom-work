//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include <MainUnit.h>
#include "NomenklaturesUnit.h"
#include "ContractUnit.h"
#include "DeliveryUnit.h"
#include "DMUnit.h"
#include "InvoiceUnit.h"
#include "OrderUnit.h"
#include "ProtocolUnit.h"

//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TNomenklaturesForm *NomenklaturesForm;
//---------------------------------------------------------------------------
__fastcall TNomenklaturesForm::TNomenklaturesForm(TComponent* Owner)
        : TForm(Owner)
{
}
//---------------------------------------------------------------------------



void __fastcall TNomenklaturesForm::FormCreate(TObject *Sender)
{
 for(int i = 0; i<NPageControl->PageCount; i++)
   NPageControl->Pages[i]->TabVisible = false;
}
void __fastcall TNomenklaturesForm::ServiceTblBeforePost(TDataSet *DataSet)
{
if(ServiceTbl->State == dsInsert){
        ServiceSP->Prepare();
        ServiceSP->ExecProc();
        ServiceTbl->FieldByName("ID")->AsInteger = ServiceSP->ParamByName("ID")->AsInteger;
    }
}

//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::ArticleTblBeforePost(TDataSet *DataSet)
{
if(ArticleTbl->State == dsInsert){
        ArticleSP->Prepare();
        ArticleSP->ExecProc();
        ArticleTbl->FieldByName("ID")->AsInteger = ArticleSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::TypeTblBeforePost(TDataSet *DataSet)
{
if(TypeTbl->State == dsInsert){
        TypeSP->Prepare();
        TypeSP->ExecProc();
        TypeTbl->FieldByName("ID")->AsInteger = TypeSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::ManufacturerTblBeforePost(
      TDataSet *DataSet)
{
if(ManufacturerTbl->State == dsInsert){
        ManufacturerSP->Prepare();
        ManufacturerSP->ExecProc();
        ManufacturerTbl->FieldByName("ID")->AsInteger = ManufacturerSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::ContragentTblBeforePost(
      TDataSet *DataSet)
{
if(ContragentTbl->State == dsInsert){
        ContragentSP->Prepare();
        ContragentSP->ExecProc();
        ContragentTbl->FieldByName("ID")->AsInteger = ContragentSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::StaffTblBeforePost(TDataSet *DataSet)
{
if(StaffTbl->State == dsInsert){
        StaffSP->Prepare();
        StaffSP->ExecProc();
        StaffTbl->FieldByName("ID")->AsInteger = StaffSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::PositionsTblBeforePost(
      TDataSet *DataSet)
{
if(PositionsTbl->State == dsInsert){
        PositionsSP->Prepare();
        PositionsSP->ExecProc();
        PositionsTbl->FieldByName("ID")->AsInteger = PositionsSP->ParamByName("ID")->AsInteger;
    }
}
//---------------------------------------------------------------------------


//---------------------------------------------------------------------------

void __fastcall TNomenklaturesForm::FormShow(TObject *Sender)
{
 if(!ServiceTbl->Active) ServiceTbl->Open();
 if(!ArticleTbl->Active) ArticleTbl->Open();
 if(!TypeTbl->Active) TypeTbl->Open();
 if(!ContragentTbl->Active) ContragentTbl->Open();
 if(!StaffTbl->Active) StaffTbl->Open();
 if(!PositionsTbl->Active) PositionsTbl->Open();
}
//---------------------------------------------------------------------------

