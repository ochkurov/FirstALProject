page 1000008 "GMA Dev. Process List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "GMA Dev. Process Header";
    Editable = false;
    CardPageId = "GMA Dev. Process Header Card";
    Caption = 'GMA Device Processes';

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description ")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}