//---------------------------------------------------------------------------

#ifndef EditInvoiceUnitH
#define EditInvoiceUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <ComCtrls.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TEditInvoiceForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label2;
        TLabel *Label4;
        TLabel *Label5;
        TBitBtn *BitBtn;
        TBitBtn *BitBtn2;
        TDBGrid *DBGrid1;
        TEdit *EditNR;
        TDateTimePicker *DateTimePicker1;
        TIBQuery *UpdateInvoiceQuery;
        TIBQuery *InsertInvoiceQuery;
        TIBQuery *ContragentQuery;
        TIntegerField *ContragentQueryID;
        TIntegerField *ContragentQueryBULSTAT;
        TIBStringField *ContragentQueryNAME;
        TIBStringField *ContragentQueryMOL;
        TIBStringField *ContragentQueryADDRESS;
        TIBStringField *ContragentQueryCONTACT;
        TIntegerField *ContragentQueryTELEPHONE;
        TIBStringField *ContragentQueryEMAIL;
        TDataSource *ContragentQueryDS;
        TIBQuery *Query;
        TDBGrid *DBGrid2;
        TLabel *Label1;
        TIBQuery *StaffQuery;
        TDataSource *StaffDS;
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString InvoiceID;
        AnsiString ContragentID;
        AnsiString StaffID;
        bool IsInsert;
        __fastcall TEditInvoiceForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditInvoiceForm *EditInvoiceForm;
//---------------------------------------------------------------------------
#endif
