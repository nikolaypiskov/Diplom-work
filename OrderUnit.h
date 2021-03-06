//---------------------------------------------------------------------------

#ifndef OrderUnitH
#define OrderUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <IBQuery.hpp>
#include <IBStoredProc.hpp>
#include <Menus.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TOrderForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid10;
        TPanel *Panel1;
        TBitBtn *BitBtn1;
        TDataSource *OrderHeadDS;
        TDataSource *OrderBodyDS;
        TIBQuery *OHQuery;
        TIBQuery *OBQuery;
        TIntegerField *OBQueryQUANTITY;
        TIBStringField *OBQueryARTICLE;
        TIBStoredProc *OrderSP;
        TIBTable *IBTable2;
        TIntegerField *IBTable2ID;
        TIBStringField *IBTable2MODEL;
        TIntegerField *IBTable2MANUFACT_ID;
        TIntegerField *IBTable2WARRANTY;
        TIntegerField *IBTable2TYPE_ID;
        TIBStoredProc *OBSP;
        TSplitter *Splitter2;
        TDBGrid *DBGrid9;
        TIntegerField *OBQueryID;
        TIntegerField *OHQueryID;
        TIBStringField *OHQueryDESCRIPTION;
        TDateField *OHQueryORDER_DATE;
        TIntegerField *OHQueryORDER_NR;
        TIBStringField *OHQueryCONTRAGENT;
        TPopupMenu *PopupMenu1;
        TPopupMenu *PopupMenu2;
        TMenuItem *N1;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TPanel *Panel2;
        TLabel *Label1;
        TDateTimePicker *DateTimePicker1;
        TLabel *Label2;
        TComboBox *ComboBox1;
        TBitBtn *BitBtn3;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N4Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn3Click(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ContragentID;
        __fastcall TOrderForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TOrderForm *OrderForm;
//---------------------------------------------------------------------------
#endif
