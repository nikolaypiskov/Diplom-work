//---------------------------------------------------------------------------

#ifndef EditOrderBodyUnitH
#define EditOrderBodyUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <Buttons.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TEditOrderBodyForm : public TForm
{
__published:	// IDE-managed Components
        TEdit *Edit1;
        TLabel *Label1;
        TDBGrid *DBGrid1;
        TDataSource *DataSource1;
        TIBTable *Article;
        TLabel *Label2;
        TBitBtn *BitBtn2;
        TBitBtn *BitBtn;
        TIBQuery *InsertQuery;
        TIBQuery *UpdateQuery;
        void __fastcall BitBtnClick(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString OrderBodyID;
        AnsiString ArticleID;
        AnsiString OrderID;
        bool IsInsert;
        __fastcall TEditOrderBodyForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditOrderBodyForm *EditOrderBodyForm;
//---------------------------------------------------------------------------
#endif
