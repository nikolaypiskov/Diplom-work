//---------------------------------------------------------------------------

#ifndef EditScheduleUnitH
#define EditScheduleUnitH
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
#include <IBTable.hpp>
#include <Buttons.hpp>
#include <IBQuery.hpp>
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TEditScheduleForm : public TForm
{
__published:	// IDE-managed Components
        TDateTimePicker *DateTimePicker1;
        TEdit *Edit1;
        TIBTable *Staff;
        TDBGrid *DBGrid1;
        TIBTable *Article;
        TIBTable *Service;
        TDBGrid *DBGrid4;
        TIBTable *Contract;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TLabel *Label6;
        TDataSource *ArticleDS;
        TDataSource *StaffDS;
        TDataSource *ContractDS;
        TDataSource *ServiceDS;
        TBitBtn *BitBtn1;
        TBitBtn *BitBtn2;
        TIBQuery *InsertScheduleQuery;
        TIBQuery *UpdateScheduleQuery;
        TLabel *Label4;
        TRadioGroup *RadioGroup1;
        TEdit *ArticleEdit;
        TIBTable *IBTable1;
        TIBTable *IBTable2;
        TLabel *Label5;
        TDateTimePicker *DateTimePicker2;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall RadioGroup1Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ScheduleID;
        AnsiString StaffID;
        AnsiString SAID;
        AnsiString ContractID;
        bool IsInsert;
        __fastcall TEditScheduleForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TEditScheduleForm *EditScheduleForm;
//---------------------------------------------------------------------------
#endif
