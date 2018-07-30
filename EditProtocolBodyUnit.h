//---------------------------------------------------------------------------

#ifndef EditProtocolBodyUnitH
#define EditProtocolBodyUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
#include <DB.hpp>
#include <DBGrids.hpp>
#include <Grids.hpp>
#include <IBCustomDataSet.hpp>
#include <IBQuery.hpp>
#include <IBTable.hpp>
#include <Buttons.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TEditProtocolBodyForm : public TForm
{
__published:	// IDE-managed Components
        TEdit *Edit1;
        TIBQuery *InsertQuery;
        TIBQuery *UpdateQuery;
        TLabel *Label3;
        TLabel *Label;
        TBitBtn *BitBtn2;
        TBitBtn *BitBtn;
        TIBTable *Schedule;
        TDataSource *DataSource3;
        TDBGrid *DBGrid3;
        TLabel *Label1;
        TRadioGroup *RadioGroup1;
        TEdit *ArticleEdit;
        void __fastcall BitBtnClick(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ProtocolBodyID;
        AnsiString SAID;
        AnsiString ScheduleID;
        AnsiString ProtocolID;
        bool IsInsert;
        __fastcall TEditProtocolBodyForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditProtocolBodyForm *EditProtocolBodyForm;
//---------------------------------------------------------------------------
#endif
