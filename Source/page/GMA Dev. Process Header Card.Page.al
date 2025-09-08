page 1000009 "GMA Dev. Process Header Card"
{
    PageType = Document;
    ApplicationArea = All;
    SourceTable = "GMA Dev. Process Header";
    Editable = true;
    Caption = 'GMA Device Process Card';

    layout
    {
        area(Content)
        {
            group(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Description"; Rec."Description ")
                {
                    ApplicationArea = All;
                }
                part(Lines; "GMA Process Header SubPage")
                {
                    SubPageLink = "Document No." = field("No.");
                }
            }
        }
    }
}