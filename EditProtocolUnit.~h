//---------------------------------------------------------------------------

#ifndef EditProtocolUnitH
#define EditProtocolUnitH
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
class TEditProtocolForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TBitBtn *BitBtn;
        TBitBtn *BitBtn2;
        TEdit *EditDescription;
        TDBGrid *DBGrid1;
        TEdit *EditNR;
        TDateTimePicker *DateTimePicker1;
        TIBQuery *UpdateProtocolQuery;
        TIBQuery *InsertProtocolQuery;
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
        void __fastcall BitBtnClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ProtocolID;
        AnsiString ContragentID;
        bool IsInsert;
        __fastcall TEditProtocolForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditProtocolForm *EditProtocolForm;
//---------------------------------------------------------------------------
#endif
