table 1000006 "GMA Dev. Process Line"
{
    Caption = 'GMA Device Process Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Document No.';
            TableRelation = "GMA Dev. Process Header";
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(3; "Device Code"; Code[20])
        {
            Caption = 'Device Code';
            DataClassification = ToBeClassified;
            TableRelation = "GMA Device";
        }
        field(4; "Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Document No.", "Line No.")
        {
            Clustered = true;
        }
    }


}