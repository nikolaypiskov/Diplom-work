//---------------------------------------------------------------------------

#ifndef EditDeliveryUnitH
#define EditDeliveryUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>

#include "DeliveryUnit.h"
#include "ContractUnit.h"
#include "DMUnit.h"
#include "InvoiceUnit.h"
#include "MainUnit.h"
#include "NomenklaturesUnit.h"
#include "OrderUnit.h"
#include "ProtocolUnit.h"
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
#include <ComCtrls.hpp>
#include <IBStoredProc.hpp>
//---------------------------------------------------------------------------
class TEditDeliveryForm : public TForm
{
__published:	// IDE-managed Components
        TEdit *EditDNR;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TBitBtn *BitBtn1;
        TBitBtn *BitBtn2;
        TDataSource *OrderDS;
        TIBQuery *OrderQuery;
        TDBGrid *DBGrid1;
        TIBQuery *UpdateDeliveryQuery;
        TDateTimePicker *DateTimePicker1;
        TIBQuery *Query;
        TIBQuery *InsertDeliveryQuery;
        TIBStoredProc *IBStoredProc1;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString DeliveryID;
        AnsiString OrderID;
        bool IsInsert;
        __fastcall TEditDeliveryForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditDeliveryForm *EditDeliveryForm;
//---------------------------------------------------------------------------
#endif
