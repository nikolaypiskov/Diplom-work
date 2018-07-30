//---------------------------------------------------------------------------

#ifndef EditOrderUnitH
#define EditOrderUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>

#include "MainUnit.h"
#include "DMUnit.h"
#include "OrderUnit.h"
#include "NomenklaturesUnit.h"
#include "DeliveryUnit.h"
#include "ProtocolUnit.h"
#include "InvoiceUnit.h"
#include "ContractUnit.h"
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TEditOrderForm : public TForm
{
__published:	// IDE-managed Components
        TBitBtn *BitBtn;
        TBitBtn *BitBtn2;
        TIBQuery *UpdateOrderQuery;
        TIBQuery *InsertOrderQuery;
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
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label4;
        TLabel *Label5;
        TEdit *EditDescription;
        TDBGrid *DBGrid1;
        TEdit *EditNR;
        TDateTimePicker *DateTimePicker1;
        TIBQuery *Query;
        void __fastcall BitBtnClick(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString OrderID;
        AnsiString ContragentID;
        bool IsInsert;
        __fastcall TEditOrderForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditOrderForm *EditOrderForm;
//---------------------------------------------------------------------------
#endif
