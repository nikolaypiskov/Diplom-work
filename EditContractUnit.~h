//---------------------------------------------------------------------------

#ifndef EditContractUnitH
#define EditContractUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TEditContractForm : public TForm
{
__published:	// IDE-managed Components
        TEdit *EditTerm;
        TEdit *EditDescription;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TBitBtn *BitBtn1;
        TBitBtn *BitBtn2;
        TIBQuery *UpdateContractQuery;
        TIBQuery *InsertContractQuery;
        TDBGrid *DBGrid1;
        TIBQuery *ContragentQuery;
        TDataSource *ContragentQueryDS;
        TIntegerField *ContragentQueryID;
        TIntegerField *ContragentQueryBULSTAT;
        TIBStringField *ContragentQueryNAME;
        TIBStringField *ContragentQueryMOL;
        TIBStringField *ContragentQueryADDRESS;
        TIBStringField *ContragentQueryCONTACT;
        TIntegerField *ContragentQueryTELEPHONE;
        TIBStringField *ContragentQueryEMAIL;
        TLabel *Label4;
        TLabel *Label5;
        TEdit *EditNR;
        TDateTimePicker *DateTimePicker1;
        TIBQuery *Query;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ContractID;
        AnsiString ContragentID;
        bool IsInsert;
        __fastcall TEditContractForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditContractForm *EditContractForm;
//---------------------------------------------------------------------------
#endif
