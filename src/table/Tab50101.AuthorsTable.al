table 50101 "Authors Table"
{
    Caption = 'Authors Table';
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
        field(3; "Date of Birth"; DateTime)
        {
            Caption = 'Date of Birth';
        }
        field(4; Genre; Text[100])
        {
            Caption = 'Genre';
        }
        field(5; Publisher; Text[100])
        {
            Caption = 'Publisher';
        }
        field(6; Nationality; Text[100])
        {
            Caption = 'Nationality';
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
        setup.TestField("Authors Nos");

        if Rec.No = '' then begin
            Rec.No := noSeries.GetNextNo(setup."Authors Nos");
        end;
    end;

}
