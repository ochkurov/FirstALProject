pageextension 1000015 "Item Color List Extension" extends "Item List"
{
    layout
    {
        addlast(Content)
        {
            field("Color Code"; Rec."Color Code")
            {
                ApplicationArea = All;
                Caption = 'Color';
                ToolTip = 'Specifies the color of the item.';
            }
        }
    }
}