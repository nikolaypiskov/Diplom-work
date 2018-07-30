//---------------------------------------------------------------------------

#ifndef DeliveryUnitH
#define DeliveryUnitH
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
class TDeliveryForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid11;
        TDBGrid *DBGrid12;
        TSplitter *Splitter1;
        TDataSource *DeliveryHeadDS;
        TDataSource *DeliveryBodyDS;
        TIBQuery *DHQuery;
        TIBQuery *DBQuery;
        TIBStringField *DBQueryARTICLE;
        TFloatField *DBQueryPRICE;
        TIntegerField *DBQueryQUANTITY;
        TFloatField *DBQueryTOTAL;
        TIBStoredProc *DBSP;
        TIntegerField *DHQueryID;
        TDateField *DHQueryDELIV_DATE;
        TIntegerField *DHQueryDELIV_NR;
        TIBStoredProc *DeliverySP;
        TIBTable *Article;
        TIntegerField *DHQueryORDER_NR;
        TDateField *DHQueryORDER_DATE;
        TIBStringField *DHQueryDESCRIPTION;
        TIntegerField *DBQueryID;
        TPopupMenu *PopupMenu1;
        TPopupMenu *PopupMenu2;
        TMenuItem *N1;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TPanel *Panel2;
        TBevel *Bevel1;
        TLabel *Label1;
        TStaticText *TotalEdit;
        TBitBtn *BitBtn1;
        TPanel *Panel1;
        TLabel *Label2;
        TDateTimePicker *DateTimePicker1;
        TLabel *Label3;
        TBitBtn *BitBtn3;
        TDateTimePicker *DateTimePicker2;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall DHQueryAfterScroll(TDataSet *DataSet);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N4Click(TObject *Sender);
        void __fastcall DBQueryCalcFields(TDataSet *DataSet);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        __fastcall TDeliveryForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDeliveryForm *DeliveryForm;
//---------------------------------------------------------------------------
#endif
