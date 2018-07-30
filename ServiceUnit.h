//---------------------------------------------------------------------------

#ifndef ServiceUnitH
#define ServiceUnitH
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
class TServiceForm : public TForm
{
__published:	// IDE-managed Components
        TIBTable *IBTable1;
        TDataSource *DataSource1;
        TDBGrid *DBGrid1;
        TPanel *Panel1;
        TBitBtn *BitBtn3;
        TBitBtn *BitBtn4;
        void __fastcall BitBtn1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        Integer FlagID;
        Integer ArticleID;
        Integer ServiceID;
        __fastcall TServiceForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TServiceForm *ServiceForm;
//---------------------------------------------------------------------------
#endif
