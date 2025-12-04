table 50103 "Members Table"
{
    Caption = 'Members Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[50])
        {
            Caption = 'No';
            Editable = false;
        }
        field(2; "Full Name"; Text[100])
        {
            Caption = 'Full Name';
        }
        field(3; "Email Address"; Text[100])
        {
            Caption = 'Email Address';

            trigger OnValidate()
            var
                regex: Codeunit Regex;
                isValid: Boolean;
            begin
                isValid := regex.IsMatch("Email Address", '^[^@\s]+@[^@\s]+\.[^@\s]+$');

                if not isValid then begin
                    Error('Invalid Email Address');
                end;
            end;
        }
        field(4; "ID Number"; Integer)
        {
            Caption = 'ID Number';
        }
        field(5; Address; Text[100])
        {
            Caption = 'Address';
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }


    var
        noSeries: Codeunit "No. Series";
        setup: Record "Library Setup";



    trigger OnInsert()
    begin
        setup.Get();
        setup.TestField("Members Nos");

        if Rec.No = '' then begin
            Rec.No := noSeries.GetNextNo(setup."Members Nos");
        end;
    end;
}
