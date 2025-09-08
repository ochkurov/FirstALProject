page 1000010 "GMA Process Header SubPage"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = "GMA Dev. Process Line";
    Editable = true;
    DelayedInsert = true;
    AutoSplitKey = true;
    Caption = 'GMA Device Process Lines';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Device Code"; Rec."Device Code")
                {

                }
                field("Quantity"; Rec."Quantity")
                {

                }
            }
        }
    }
}