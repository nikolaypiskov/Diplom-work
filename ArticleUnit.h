//---------------------------------------------------------------------------

#ifndef ArticleUnitH
#define ArticleUnitH
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
#include <IBTable.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TArticleForm : public TForm
{
__published:	// IDE-managed Components
        TIBTable *IBTable1;
        TDataSource *DataSource1;
        TDBGrid *DBGrid1;
        TIntegerField *IBTable1ID;
        TIBStringField *IBTable1MODEL;
        TIntegerField *IBTable1MANUFACT_ID;
        TIntegerField *IBTable1WARRANTY;
        TIntegerField *IBTable1TYPE_ID;
        TPanel *Panel1;
        TBitBtn *BitBtn3;
        TBitBtn *BitBtn4;
        void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        Integer FlagID;
        Integer ArticleID;
        Integer ServiceID;
        __fastcall TArticleForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TArticleForm *ArticleForm;
//---------------------------------------------------------------------------
#endif
