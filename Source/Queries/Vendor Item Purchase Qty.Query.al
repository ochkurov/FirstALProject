query 1000023 "Vendor Item Purchase Qty"
{
    Caption = 'Inventory Items Quantities on Released POs per Vendor';
    QueryType = Normal;

    elements
    {
        dataitem(Vendor; Vendor)
        {
            column("Vendor No."; "No.") { }
            column("Vendor Name"; Name) { }

            dataitem("Purchase Header"; "Purchase Header")
            {
                DataItemLink = "Buy-from Vendor No." = Vendor."No.";
                DataItemTableFilter = "Document Type" = const(Order),
                                      Status = const(Released);

                dataitem("Purchase Line"; "Purchase Line")
                {
                    DataItemLink = "Document No." = "Purchase Header"."No.";

                    dataitem(Item; Item)
                    {
                        DataItemLink = "No." = "Purchase Line"."No.";
                        DataItemTableFilter = Type = const(Inventory);

                        column("Item No."; "No.") { }
                        column("Item Description"; Description) { }

                        column("Quantity"; Quantity)
                        {
                            Method = Sum; // Суммируем количество
                        }
                    }
                }
            }
        }
    }
}
