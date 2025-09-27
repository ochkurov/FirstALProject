report 1000022 "Item List"
{
    Caption = 'Item List';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(Item; Item)
        {
            RequestFilterFields = "No.", "Description";
            DataItemTableView = SORTING("Inventory Posting Group", "No.");

            column(InventoryPostingGroup; "Inventory Posting Group") { }
            column(ItemNo; "No.") { }
            column(Description; Description) { }
            column(BaseUnitOfMeasure; "Base Unit of Measure") { }
            column(UnitCost; "Unit Cost") { }
            column(UnitPrice; "Unit Price") { }
            column(Inventory; Inventory) { }


            trigger OnAfterGetRecord()
            begin
                Item.CalcFields("Unit Cost", "Unit Price", Inventory);
            end;
        }
    }
}
