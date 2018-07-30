//---------------------------------------------------------------------------

#ifndef EditInvoiceBodyUnitH
#define EditInvoiceBodyUnitH
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
#include <IBTable.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TEditInvoiceBodyForm : public TForm
{
__published:	// IDE-managed Components
        TLabel *Label2;
        TLabel *Label3;
        TEdit *Edit1;
        TEdit *Edit2;
        TBitBtn *BitBtn2;
        TBitBtn *BitBtn;
        TIBQuery *InsertQuery;
        TIBQuery *UpdateQuery;
        TLabel *Label1;
        TRadioGroup *RadioGroup1;
        TEdit *ArticleEdit;
        void __fastcall BitBtnClick(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString InvoiceBodyID;
        AnsiString SAID;
        AnsiString InvoiceID;
        bool IsInsert;
        __fastcall TEditInvoiceBodyForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditInvoiceBodyForm *EditInvoiceBodyForm;
//---------------------------------------------------------------------------
#endif
