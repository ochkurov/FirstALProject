// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.FirstALProject;
using Microsoft.Sales.Customer;
using Microsoft.Purchases.Document;
//using Microsoft.Sales.Customer;

pageextension 1000000 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        VendorHelper.VendorHelperProcedure();
        VendorHelper.GetVendorCurrentAdressProcedure('10000');
        VendorHelper.ShowSumPurchasesByOrders("Purchase Document Type"::Order, '10000');

        FirstCodeunit.MyGoodProcedure('9000');
    end;


    var
        FirstCodeunit: Codeunit FirstCodeunit;
        VendorHelper: Codeunit VendorHelper;


}