page 1000007 "GMA Devices"
{
    PageType = List;
    Editable = true;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "GMA Device";

    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(Name; NameSource)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}