//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop
//---------------------------------------------------------------------------
USEFORM("MainUnit.cpp", MainForm);
USEFORM("DMUnit.cpp", DM); /* TDataModule: File Type */
USEFORM("ContractUnit.cpp", ContractForm);
USEFORM("DeliveryUnit.cpp", DeliveryForm);
USEFORM("InvoiceUnit.cpp", InvoiceForm);
USEFORM("NomenklaturesUnit.cpp", NomenklaturesForm);
USEFORM("OrderUnit.cpp", OrderForm);
USEFORM("ProtocolUnit.cpp", ProtocolForm);
USEFORM("EditContractUnit.cpp", EditContractForm);
USEFORM("EditDeliveryUnit.cpp", EditDeliveryForm);
USEFORM("EditOrderUnit.cpp", EditOrderForm);
USEFORM("EditProtocolUnit.cpp", EditProtocolForm);
USEFORM("EditInvoiceUnit.cpp", EditInvoiceForm);
USEFORM("EditScheduleUnit.cpp", EditScheduleForm);
USEFORM("EditOrderBodyUnit.cpp", EditOrderBodyForm);
USEFORM("EditDeliveryBodyUnit.cpp", EditDeliveryBodyForm);
USEFORM("EditProtocolBodyUnit.cpp", EditProtocolBodyForm);
USEFORM("EditInvoiceBodyUnit.cpp", EditInvoiceBodyForm);
USEFORM("ArticleUnit.cpp", ArticleForm);
USEFORM("ServiceUnit.cpp", ServiceForm);
USEFORM("StaffInvUnit.cpp", Form1);
USEFORM("StockUnit.cpp", Form2);
//---------------------------------------------------------------------------
WINAPI WinMain(HINSTANCE, HINSTANCE, LPSTR, int)
{
        try
        {
                 Application->Initialize();
                 Application->CreateForm(__classid(TDM), &DM);
                 Application->CreateForm(__classid(TMainForm), &MainForm);
                 Application->CreateForm(__classid(TContractForm), &ContractForm);
                 Application->CreateForm(__classid(TDeliveryForm), &DeliveryForm);
                 Application->CreateForm(__classid(TInvoiceForm), &InvoiceForm);
                 Application->CreateForm(__classid(TNomenklaturesForm), &NomenklaturesForm);
                 Application->CreateForm(__classid(TOrderForm), &OrderForm);
                 Application->CreateForm(__classid(TProtocolForm), &ProtocolForm);
                 Application->CreateForm(__classid(TEditContractForm), &EditContractForm);
                 Application->CreateForm(__classid(TEditDeliveryForm), &EditDeliveryForm);
                 Application->CreateForm(__classid(TEditOrderForm), &EditOrderForm);
                 Application->CreateForm(__classid(TEditProtocolForm), &EditProtocolForm);
                 Application->CreateForm(__classid(TEditInvoiceForm), &EditInvoiceForm);
                 Application->CreateForm(__classid(TEditScheduleForm), &EditScheduleForm);
                 Application->CreateForm(__classid(TEditOrderBodyForm), &EditOrderBodyForm);
                 Application->CreateForm(__classid(TEditDeliveryBodyForm), &EditDeliveryBodyForm);
                 Application->CreateForm(__classid(TEditProtocolBodyForm), &EditProtocolBodyForm);
                 Application->CreateForm(__classid(TEditInvoiceBodyForm), &EditInvoiceBodyForm);
                 Application->CreateForm(__classid(TArticleForm), &ArticleForm);
                 Application->CreateForm(__classid(TServiceForm), &ServiceForm);
                 Application->CreateForm(__classid(TForm1), &Form1);
                 Application->CreateForm(__classid(TForm2), &Form2);
                 Application->Run();
        }
        catch (Exception &exception)
        {
                 Application->ShowException(&exception);
        }
        catch (...)
        {
                 try
                 {
                         throw Exception("");
                 }
                 catch (Exception &exception)
                 {
                         Application->ShowException(&exception);
                 }
        }
        return 0;
}
//---------------------------------------------------------------------------
