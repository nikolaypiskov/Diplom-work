//---------------------------------------------------------------------------

#ifndef EditDeliveryBodyUnitH
#define EditDeliveryBodyUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
#include <IBTable.hpp>
#include <Buttons.hpp>
//---------------------------------------------------------------------------
class TEditDeliveryBodyForm : public TForm
{
__published:	// IDE-managed Components
        TDBGrid *DBGrid1;
        TEdit *Edit1;
        TEdit *Edit2;
        TIBTable *Article;
        TIBQuery *InsertQuery;
        TIBQuery *UpdateQuery;
        TDataSource *DataSource1;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TBitBtn *BitBtn2;
        TBitBtn *BitBtn;
        void __fastcall BitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString DeliveryBodyID;
        AnsiString ArticleID;
        AnsiString DeliveryID;
        bool IsInsert;
        __fastcall TEditDeliveryBodyForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditDeliveryBodyForm *EditDeliveryBodyForm;
//---------------------------------------------------------------------------
#endif
