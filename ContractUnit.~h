//---------------------------------------------------------------------------

#ifndef ContractUnitH
#define ContractUnitH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <Buttons.hpp>
#include <DBGrids.hpp>
#include <ExtCtrls.hpp>
#include <Grids.hpp>
#include <DB.hpp>
#include <IBCustomDataSet.hpp>
#include <IBTable.hpp>
#include <IBQuery.hpp>
#include <IBStoredProc.hpp>
#include <ComCtrls.hpp>
#include <Menus.hpp>
//---------------------------------------------------------------------------
class TContractForm : public TForm
{
__published:	// IDE-managed Components
        TPanel *Panel1;
        TBitBtn *BitBtn1;
        TDBGrid *DBGrid8;
        TDataSource *ContractDS;
        TIBStoredProc *ContractSP;
        TIBQuery *IBQuery1;
        TIntegerField *IBQuery1ID;
        TDateField *IBQuery1CONTR_DATE;
        TIntegerField *IBQuery1CONTR_NR;
        TIntegerField *IBQuery1TERM;
        TIBStringField *IBQuery1DESCRIPTION;
        TIBStringField *IBQuery1CONTRAGENT;
        TPanel *Panel2;
        TDateTimePicker *DateTimePicker1;
        TComboBox *ComboBox1;
        TEdit *Edit1;
        TBitBtn *BitBtn3;
        TLabel *Label1;
        TLabel *Label2;
        TLabel *Label3;
        TPopupMenu *PopupMenu1;
        TMenuItem *N1;
        TMenuItem *N2;
        void __fastcall BitBtn1Click(TObject *Sender);
        void __fastcall ComboBox1Change(TObject *Sender);
        void __fastcall FormShow(TObject *Sender);
        void __fastcall BitBtn3Click(TObject *Sender);
        void __fastcall N1Click(TObject *Sender);
        void __fastcall N2Click(TObject *Sender);
private:	// User declarations
public:		// User declarations
        AnsiString ContragentID;
        __fastcall TContractForm(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TContractForm *ContractForm;
//---------------------------------------------------------------------------
#endif
