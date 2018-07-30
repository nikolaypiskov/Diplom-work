//---------------------------------------------------------------------------

#ifndef MainUnitH
#define MainUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
#include <ToolWin.hpp>
#include <ExtCtrls.hpp>
#include <Buttons.hpp>
#include <jpeg.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
#include <IBTable.hpp>
#include <IBStoredProc.hpp>
//---------------------------------------------------------------------------
class TMainForm : public TForm
{
__published:	// IDE-managed Components
        TMainMenu *MainMenu1;
        TMenuItem *N5;
        TMenuItem *N6;
        TMenuItem *I1;
        TMenuItem *N1;
        TMenuItem *N4;
        TMenuItem *N7;
        TMenuItem *N8;
        TMenuItem *N9;
        TMenuItem *N10;
        TMenuItem *N11;
        TMenuItem *N12;
        TMenuItem *N13;
        TMenuItem *NServiceMenu;
        TMenuItem *N15;
        TMenuItem *N16;
        TMenuItem *N17;
        TMenuItem *N18;
        TMenuItem *N14;
        TPanel *Panel1;
        TBevel *Bevel1;
        TBitBtn *RefreshBtn;
        TDateTimePicker *FromDate;
        TDateTimePicker *ToDate;
        TDBGrid *DBGrid1;
        TComboBox *StaffCombo;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TIBQuery *ReportQuery;
        TDataSource *RQDS;
        TMenuItem *N2;
        TMenuItem *N3;
        TIntegerField *ReportQueryID;
        TDateField *ReportQuerySCHEDULE_DATE;
        TTimeField *ReportQueryDAYTIME;
        TIBStringField *ReportQueryDESCRIPTION;
        TIntegerField *ReportQuerySTAFF_ID;
        TIntegerField *ReportQueryARTICLE_ID;
        TIntegerField *ReportQuerySERVICE_ID;
        TIntegerField *ReportQueryCONTRACT_ID;
        TIBStringField *ReportQueryFNAME;
        TIBStringField *ReportQueryLNAME;
        TIntegerField *ReportQueryPOSITION_ID;
        TIBStringField *ReportQueryPOSITION_NAME;
        TIBStringField *ReportQueryNAME;
        TIntegerField *ReportQueryFLAG;
        TIntegerField *ReportQueryTERM;
        TStringField *ReportQueryCALC_TYPE;
        TStringField *ReportQueryPROTOCOL;
        TIntegerField *ReportQueryPROTOCOL_ID;
        TBitBtn *BitBtn1;
        TBitBtn *BitBtn2;
        TIBStoredProc *ScheduleSP;
        TIntegerField *ReportQueryPROT_NR;
        TMenuItem *N19;
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N15Click(TObject *Sender);
        void __fastcall NServiceMenuClick(TObject *Sender);
        void __fastcall N16Click(TObject *Sender);
        void __fastcall N18Click(TObject *Sender);
        void __fastcall N17Click(TObject *Sender);
        void __fastcall N14Click(TObject *Sender);
        void __fastcall RefreshBtnClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall StaffComboChange(TObject *Sender);
        void __fastcall ReportQueryCalcFields(TDataSet *DataSet);
        void __fastcall BitBtn2Click(TObject *Sender);
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall I1Click(TObject *Sender);
        void __fastcall N19Click(TObject *Sender);
private:	// User declarations
        AnsiString StaffID;
public:		// User declarations
        __fastcall TMainForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TMainForm *MainForm;
//---------------------------------------------------------------------------
#endif
