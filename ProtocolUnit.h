//---------------------------------------------------------------------------

#ifndef ProtocolUnitH
#define ProtocolUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <IBQuery.hpp>
#include <IBStoredProc.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TProtocolForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid13;
        TDBGrid *DBGrid14;
        TSplitter *Splitter1;
        TPanel *Panel1;
        TBitBtn *BitBtn1;
        TDataSource *ProtocolHeadDS;
        TDataSource *ProtocolBodyDS;
        TIBQuery *PHQuery;
        TIBQuery *PBQuery;
        TIBStringField *PBQueryNAME;
        TIntegerField *PBQueryFLAG;
        TIBStringField *PBQueryDESCRIPTION;
        TDateField *PBQuerySCHEDULE_DATE;
        TStringField *PBQueryTYPE;
        TIBStoredProc *ProtocolSP;
        TIBStoredProc *PBSP;
        TIBTable *Article;
        TIBTable *Service;
        TIBTable *IBTable1;
        TIntegerField *IBTable1ID;
        TIBStringField *IBTable1DESCRIPTION;
        TIBStringField *IBTable1FLAG_AS;
        TIntegerField *IBTable1PROTOCOLH_ID;
        TIntegerField *IBTable1SCHEDULE_ID;
        TIntegerField *IBTable1ARTICLE_ID;
        TIntegerField *IBTable1SERVICE_ID;
        TIBTable *Schedule;
        TDateField *IBTable1SCHEDULE_DATE;
        TStringField *IBTable1TYPE;
        TStringField *IBTable1NAME;
        TIntegerField *PBQueryID;
        TPopupMenu *PopupMenu1;
        TPopupMenu *PopupMenu2;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TMenuItem *N5;
        TPanel *Panel2;
        TLabel *Label1;
        TDateTimePicker *DateTimePicker1;
        TLabel *Label2;
        TComboBox *ComboBox1;
        TBitBtn *BitBtn3;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall PBQueryCalcFields(TDataSet *DataSet);
        void __fastcall IBTable1CalcFields(TDataSet *DataSet);
        void __fastcall IBTable1BeforePost(TDataSet *DataSet);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N4Click(TObject *Sender);
        void __fastcall N5Click(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        Integer ProtocolBody;
        AnsiString ContragentID;
        __fastcall TProtocolForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TProtocolForm *ProtocolForm;
//---------------------------------------------------------------------------
#endif
