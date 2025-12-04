table 50105 "Books Table"
{
    Caption = 'Books Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[50])
        {
            Caption = 'No';
            Editable = false;
        }
        field(2; Title; Text[100])
        {
            Caption = 'Title';

            trigger OnValidate()
            begin
                Rec.Title := Rec.Title.ToUpper();
            end;
        }
        field(3; Author; Text[100])
        {
            Caption = 'Author';
        }
        field(4; "Year Published"; DateTime)
        {
            Caption = 'Year Published';
        }
        field(5; Edition; Enum "Book Edition Enum")
        {
            Caption = 'Edition';
        }
        field(6; Genre; Text[100])
        {
            Caption = 'Genre';
        }
        field(7; Description; Text[500])
        {
            Caption = 'Description';
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
        setup.TestField("Library No");

        if Rec.No = '' then begin
            Rec.No := noSeries.GetNextNo(setup."Library No");
        end;
    end;
}
