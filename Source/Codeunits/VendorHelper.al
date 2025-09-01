codeunit 1000002 VendorHelper
{
    procedure VendorHelperProcedure()
    var
        Vendor: Record Vendor;


    begin
        Vendor.SetRange(Blocked, Vendor.Blocked::" ");
        Vendor.SetRange("Location Code", '<>%1', '');
        // Vendor.SetRange(Date, '<%1', Today);
        Message('Vendors count total = %1', Vendor.Count);

    end;

    procedure GetVendorCurrentAdressProcedure(VendorNo: Code[20])
    var
        Vendor: Record Vendor;

    begin
        if Vendor.Get(VendorNo) then
            Message('Vendor Address is = %1, Vendor City is = %2 , Vendor Postcode = %3', Vendor.Address, Vendor.City, Vendor."Post Code")
        else
            Error('Vendor No. %1 is not found', VendorNo);
    end;

    procedure ShowSumPurchasesByOrders(DocumentType: Enum "Purchase Document Type"; DocumentNo: Code[20])
    var
        PurchaseLine: Record "Purchase Line";
        TotalQty: Decimal;
    begin
        PurchaseLine.SetRange("Document Type", DocumentType);
        PurchaseLine.SetRange("Document No.", DocumentNo);
        if PurchaseLine.FindSet() then
            repeat
                TotalQty += PurchaseLine.Quantity;
            until PurchaseLine.Next() = 0;
        if TotalQty = 0 then
            Error('Sum of quantities in lines %1 , %2  = 0', Format(DocumentType), DocumentNo);

    end;

}