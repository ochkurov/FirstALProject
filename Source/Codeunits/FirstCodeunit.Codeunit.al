#pragma warning disable LC0015
codeunit 1000001 FirstCodeunit
{
    Access = Internal;
    Subtype = Normal;

    procedure MyGoodProcedure(CustomerNo: Code[20])
    var
        Customer: Record Customer;
        CustomerPositiveMsg: Label 'Customer Name is %1.', Comment = '%1 is Customer Name';
        CustomerNegativeMsg: Label 'Customer with No. %1 not found.', Comment = '%1 is Customer No.';
    begin
        if Customer.Get(CustomerNo) then
            Message(CustomerPositiveMsg, Customer.Name)
        else
            Message(CustomerNegativeMsg, CustomerNo);
    end;

    procedure MyProcedure(CustomerNo: Code[20])
    var
        Customer: Record Customer;
        CustomerCount: Integer;
    begin
        if Customer.FindSet() then
            repeat
                CustomerCount += 1;
            until Customer.Next() = 0;
        Message('Customer Count = %1', CustomerCount);
    end;
}