// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

namespace DefaultPublisher.FirstALProject;
using Microsoft.Sales.Customer;

//using Microsoft.Sales.Customer;

pageextension 50100 CustomerListExt extends "Customer List"
{
    trigger OnOpenPage();
    begin
        //Message('App published: Hello world');
        FirstCodeunit.MyProcedure('10000');
        FirstCodeunit.MyGoodProcedure('9000');
    end;

    var
        FirstCodeunit: Codeunit FirstCodeunit;
}