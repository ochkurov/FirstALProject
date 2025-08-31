codeunit 50100 FirstCodeunit
{
    Access = Internal;
    Subtype = Normal;
    //TableNo = Customer;
    SingleInstance = true;

    trigger OnRun()


    begin


    end;

    procedure MyGoodProcedure(CustomerNo: Code[20])
    var
        Customer: Record Customer;
    begin
        if Customer.Get(CustomerNo) then
            Message('Customer Name is = %1', Customer.Name)
        else
            Message('Customer with No. -%1 not found', CustomerNo);
    end;

    procedure MyProcedure(CustomerNo: Code[20])
    var
        Customer: Record Customer;
        CustomerCount: Integer;
    begin
        // Customer.SetFilter("No.", '>%1&<=%2', CustomerNo, '20000');
        // Customer.FindFirst();
        // Message('First Customer Name: %1', Customer.Name);

        // Customer.SetRange("No.");
        // Customer.FindLast();
        // Message('Lastest Customer Name: %1', Customer.Name)
        if Customer.FindSet() then
            repeat
                CustomerCount += 1;
            until Customer.Next() = 0;
        Message('Customer Count = %1', CustomerCount);

    end;
}