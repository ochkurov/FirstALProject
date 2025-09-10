tableextension 1000016 "Inventory Setup Extension" extends "Inventory Setup"
{
    fields
    {
        field(100001; "Default Color Code"; Code[20])
        {
            Caption = 'Default Color Code';
            TableRelation = Color;
            DataClassification = ToBeClassified;
        }
    }

}