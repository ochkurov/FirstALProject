table 1000005 "GMA Dev. Process Header"
{
    DataClassification = ToBeClassified;
    Caption = 'GMA Device Process Header';

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;

        }
        field(2; "Description "; Text[80])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

}