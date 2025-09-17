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
                    TestName: Code[20] 'Test Name';
                begin
                    RecRef.Open(Database::Vendor);
                    FieldRef := RecRef.Field(1);
                    FieldRef.SetRange('10000');
                    if RecRef.FindFirst() then begin

                        FieldRef := RecRef.Field(2);
                        FieldRef.Validate('Test Name');
                        RecRef.Modify();
                        Message('Vendor 10000 name is already changed to ');

                    end;

                end;
            }
        }
    }
}