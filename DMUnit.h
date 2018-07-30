//---------------------------------------------------------------------------

#ifndef DMUnitH
#define DMUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBDatabase.hpp>
#include <IBQuery.hpp>
//---------------------------------------------------------------------------
class TDM : public TDataModule
{
__published:	// IDE-managed Components
        TIBDatabase *DB;
        TIBTransaction *Trans;
        TIBQuery *Query;
private:	// User declarations
public:		// User declarations
        bool __fastcall SelectQuery(AnsiString sql);
        __fastcall TDM(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TDM *DM;
//---------------------------------------------------------------------------
#endif
