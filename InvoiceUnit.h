//---------------------------------------------------------------------------

#ifndef InvoiceUnitH
#define InvoiceUnitH
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
class TInvoiceForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid16;
        TDBGrid *DBGrid17;
        TPanel *Panel1;
        TBitBtn *BitBtn1;
        TSplitter *Splitter1;
        TDataSource *InvoiceHeadDS;
        TIBQuery *IHQuery;
        TIBQuery *IBQuery;
        TDateField *IHQueryINVOICE_DATE;
        TIntegerField *IHQueryINVOICE_NR;
        TIBStringField *IHQuerySTAFF;
        TIBStringField *IHQueryCONTRAGENT;
        TFloatField *IBQueryPRICE;
        TIntegerField *IBQueryQUANTITY;
        TIBStringField *IBQueryNAME;
        TIntegerField *IBQueryFLAG;
        TIntegerField *IHQueryID;
        TFloatField *IBQueryTOTAL;
        TStringField *IBQueryCALC_TYPE;
        TIBStoredProc *InvoiceSP;
        TIBStoredProc *IBSP;
        TIBTable *Article;
        TIBTable *Service;
        TIntegerField *IBQueryID;
        TPopupMenu *PopupMenu1;
        TPopupMenu *PopupMenu2;
        TMenuItem *N1;
        TMenuItem *N2;
        TMenuItem *N3;
        TMenuItem *N4;
        TStaticText *TotalEdit;
        TLabel *Label1;
        TPanel *Panel2;
        TLabel *Label2;
        TDateTimePicker *DateTimePicker1;
        TLabel *Label3;
        TComboBox *ComboBox1;
        TBitBtn *BitBtn3;
        TComboBox *ComboBox2;
        TLabel *Label4;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall IBQueryCalcFields(TDataSet *DataSet);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
        void __fastcall N3Click(TObject *Sender);
        void __fastcall N4Click(TObject *Sender);
        void __fastcall IHQueryAfterScroll(TDataSet *DataSet);
        void __fastcall ComboBox2Change(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn3Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ContragentID;
        AnsiString StaffID;
        __fastcall TInvoiceForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TInvoiceForm *InvoiceForm;
//---------------------------------------------------------------------------
#endif
