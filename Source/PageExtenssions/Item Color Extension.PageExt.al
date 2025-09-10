pageextension 1000014 "Item Color Card Extension" extends "Item Card"
{
    layout
    {
        addlast(content)
        {
            field("Color Code"; Rec."Color Code")
            {
                ApplicationArea = All;
                ToolTip = 'Color Code for Item';
            }
        }
    }

}