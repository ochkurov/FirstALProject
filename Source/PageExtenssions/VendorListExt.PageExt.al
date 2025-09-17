pageextension 1000020 VendorListExt extends "Vendor List"
{

    actions
    {
        addlast(processing)
        {
            action(ChangeNameToZero)
            {
                Caption = '0';
                ApplicationArea = All;
                ToolTip = 'Set the name "Test Name" for Vendor this No. = 10000';
                Image = Open;
                Promoted = true;

                trigger OnAction()
                var
                    RecRef: RecordRef;
                    FieldRef: FieldRef;
                    TestNameLbl: Label 'Test Name', Comment = 'The new name of Vendor 10000';
                begin
                    RecRef.Open(Database::Vendor);
                    FieldRef := RecRef.Field(1);
                    FieldRef.SetRange('10000');
                    if RecRef.FindFirst() then begin

                        FieldRef := RecRef.Field(2);
                        FieldRef.Validate(TestNameLbl);
                        RecRef.Modify();
                        Message('Vendor 10000 name is already changed to %1', TestNameLbl);

                    end else
                        Message('Vendor 10000 is not found :(');

                    RecRef.Close();
                end;
            }
            action(CountVendorsFunc)
            {
                Caption = 'Count Vendors';
                ApplicationArea = All;
                ToolTip = 'Shows the count of vendors whose name (Name field) starts with the letter "M"';
                Image = Open;
                Promoted = true;
                trigger OnAction()
                var
                    RecRefField: RecordRef;
                    FieldRefField: FieldRef;
                    Count: Integer;
                begin
                    Count := 0;
                    RecRefField.Open(Database::Vendor);
                    FieldRefField := RecRefField.Field(2);
                    if RecRefField.FindSet() then begin
                        repeat
                            if CopyStr(FieldRefField.Value, 1, 1) = 'M' then
                                Count += 1;
                        until RecRefField.Next() = 0;


                        if Count = 0 then
                            Error('No vendors found with names starting with "M".')
                        else
                            Message('Number of vendors starting with "M": %1', Count);
                    end else
                        Error('There are no vendors in the system.');

                    RecRefField.Close();
                end;
            }
            action(VendorCreator)
            {
                Caption = 'Create Vendor RecRef';
                ApplicationArea = All;
                Image = Open;
                Promoted = true;
                ToolTip = 'When the button is clicked a new Vendor should be created with the name "RecordRef example"';
                trigger OnAction()
                var
                    RecRefField: RecordRef;
                    FieldRefField: FieldRef;
                    NewVendorName: Label 'RecordRef example', Comment = 'This is a new Vendor name';
                begin
                    RecRefField.Open(Database::Vendor);
                    RecRefField.Init();
                    FieldRefField := RecRefField.Field(4);
                    FieldRefField.Value := NewVendorName;
                    RecRefField.Insert();
                    Message('The new Vendor this name - %1 already created!', NewVendorName)
                end;
            }
        }
    }
}