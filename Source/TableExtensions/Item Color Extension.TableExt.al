tableextension 1000013 "Item Color Extension" extends Item
{
    fields
    {
        field(1000000; "Color Code"; Code[20])
        {
            Caption = 'Color Code';
            DataClassification = ToBeClassified;
            TableRelation = "Color";
            AllowInCustomizations = Always;
        }
    }
}