//---------------------------------------------------------------------------

#ifndef NomenklaturesUnitH
#define NomenklaturesUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <IBQuery.hpp>
#include <IBStoredProc.hpp>
//#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TNomenklaturesForm : public TForm
{
__published:	// IDE-managed Components
        TPageControl *NPageControl;
        TTabSheet *TabSheet1;
        TTabSheet *TabSheet2;
        TTabSheet *TabSheet3;
        TDBGrid *DBGrid1;
        TDBGrid *DBGrid2;
        TDBGrid *DBGrid3;
        TTabSheet *TabSheet4;
        TTabSheet *TabSheet5;
        TTabSheet *TabSheet6;
        TTabSheet *TabSheet7;
        TDBGrid *DBGrid4;
        TDBGrid *DBGrid5;
        TDBGrid *DBGrid6;
        TDBGrid *DBGrid7;
        TPanel *Panel1;
        TBitBtn *BitBtn1;
        TPanel *Panel2;
        TPanel *Panel3;
        TPanel *Panel4;
        TPanel *Panel5;
        TPanel *Panel6;
        TPanel *Panel7;
        TPanel *Panel8;
        TIBTable *ServiceTbl;
        TIBTable *ContragentTbl;
        TIBTable *TypeTbl;
        TIBTable *ManufacturerTbl;
        TIBTable *PositionsTbl;
        TIBTable *StaffTbl;
        TDataSource *ServiceDS;
        TDataSource *TypeDS;
        TDataSource *ManufacturerDS;
        TDataSource *ContragentDS;
        TDataSource *StaffDS;
        TDataSource *PositionsDS;
        TDataSource *ArticleDS;
        TIntegerField *StaffTblID;
        TIBStringField *StaffTblFNAME;
        TIBStringField *StaffTblLNAME;
        TIBBCDField *StaffTblSALARY;
        TIntegerField *StaffTblPOSITION_ID;
        TStringField *StaffTblPOSITION;
        TIBTable *ArticleTbl;
        TIntegerField *ArticleTblID;
        TIBStringField *ArticleTblMODEL;
        TIntegerField *ArticleTblMANUFACT_ID;
        TIntegerField *ArticleTblWARRANTY;
        TIntegerField *ArticleTblTYPE_ID;
        TStringField *ArticleTblTYPE;
        TStringField *ArticleTblMANUFACTURER;
        TIBStoredProc *ContragentSP;
        TIBStoredProc *ArticleSP;
        TIBStoredProc *TypeSP;
        TIBStoredProc *StaffSP;
        TIBStoredProc *ManufacturerSP;
        TIBStoredProc *PositionsSP;
        TIBStoredProc *ServiceSP;
        void __fastcall FormCreate(TObject *Sender);
        void __fastcall ServiceTblBeforePost(TDataSet *DataSet);
        void __fastcall ArticleTblBeforePost(TDataSet *DataSet);
        void __fastcall TypeTblBeforePost(TDataSet *DataSet);
        void __fastcall ManufacturerTblBeforePost(TDataSet *DataSet);
        void __fastcall ContragentTblBeforePost(TDataSet *DataSet);
        void __fastcall StaffTblBeforePost(TDataSet *DataSet);
        void __fastcall PositionsTblBeforePost(TDataSet *DataSet);
        void __fastcall FormShow(TObject *Sender);

private:	// User declarations
public:		// User declarations
        __fastcall TNomenklaturesForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TNomenklaturesForm *NomenklaturesForm;
//---------------------------------------------------------------------------
#endif
