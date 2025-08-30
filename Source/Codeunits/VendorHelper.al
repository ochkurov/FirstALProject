codeunit 50101 VendorHelper
{
    procedure MyProcedure()
    var
        Vendor: Record Vendor;


    begin
        Vendor.SetRange(Blocked, Vendor.Blocked::All);
        
    end;
}