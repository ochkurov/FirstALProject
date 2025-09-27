query 1000023 "VendorItemPurchaseQty"
{
    Caption = 'Inventory Items Quantities on Released POs per Vendor';
    QueryType = Normal;

    elements
    {
        dataitem(Vendor; Vendor)
        {
            column(VendorNo; "No.")
            {
                Caption = 'Vendor No.';
            }
            column(VendorName; Name)
            {
                Caption = 'Vendor Name';
            }

            dataitem(PurchaseHeader; "Purchase Header")
            {
                DataItemLink = "Buy-from Vendor No." = Vendor."No.";
                DataItemTableFilter = "Document Type" = const(Order),
                                      Status = const(Released);

                dataitem(PurchaseLine; "Purchase Line")
                {
                    DataItemLink = "Document No." = PurchaseHeader."No.";

                    dataitem(Item; Item)
                    {
                        DataItemLink = "No." = PurchaseLine."No.";
                        DataItemTableFilter = Type = const(Inventory);

                        column(ItemNo; "No.")
                        {
                            Caption = 'Item No.';
                        }
                        column(ItemDescription; Description)
                        {
                            Caption = 'Item Description';
                        }
                    }

                    column(TotalQuantity; Quantity)
                    {
                        Caption = 'Total Quantity';
                        Method = Sum; // теперь правильно, потому что Quantity из Purchase Line
                    }
                }
            }
        }
    }
}

