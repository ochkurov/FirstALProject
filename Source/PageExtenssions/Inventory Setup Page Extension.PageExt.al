pageextension 1000001 "Inventory Setup Page Extension" extends "Inventory Setup"
{
    layout
    {
        addlast(content)
        {
            field("Default Color Code"; Rec."Default Color Code")
            {
                ApplicationArea = All;
                ToolTip = 'Default Color Code for Inventory Setup';
            }
        }
    }
}