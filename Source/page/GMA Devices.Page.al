page 1000007 "GMA Devices"
{
    PageType = List;
    Editable = true;
    ApplicationArea = All;
    SourceTable = "GMA Device";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}