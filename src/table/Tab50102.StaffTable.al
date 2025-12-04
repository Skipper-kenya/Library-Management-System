table 50102 "Staff Table"
{
    Caption = 'Staff Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[20])
        {
            Caption = 'No';
            Editable = false;
        }
        field(2; "Full Name"; Text[50])
        {
            Caption = 'Full Name';
        }
        field(6; "Date of Birth"; DateTime)
        {
            Caption = 'Date of Birth';
        }
        field(3; Department; Text[100])
        {
            Caption = 'Department';
        }
        field(5; Role; Text[100])
        {
            Caption = 'Role';
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
        setup.TestField("Staff Nos");

        if Rec.No = '' then begin
            Rec.No := noSeries.GetNextNo(setup."Staff Nos");
        end;
    end;


}
