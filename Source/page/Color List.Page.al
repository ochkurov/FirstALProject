page 1000011 "Color List"
{
    PageType = List;
    ApplicationArea = All;
    SourceTable = "Color";
    Caption = 'Color List';


    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                field("Code"; Rec.Code)
                {
                    Caption = 'Code';
                }
                field("Description"; Rec.Description)
                {
                    Caption = 'Description';
                }
            }
        }
    }
}
