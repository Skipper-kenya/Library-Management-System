table 50104 "LibraryCues Table"
{
    Caption = 'LibraryCues Table';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[50])
        {
            Caption = 'No';
        }
        field(2; Books; Integer)
        {
            Caption = 'Books';
            FieldClass = FlowField;
            CalcFormula = count("Books Table");
        }
        field(3; Authors; Integer)
        {
            Caption = 'Authors';
            FieldClass = FlowField;
            CalcFormula = count("Authors Table");
        }
        field(4; Staff; Integer)
        {
            Caption = 'Staff';
            FieldClass = FlowField;
            CalcFormula = count("Staff Table");
        }
        field(5; Users; Integer)
        {
            Caption = 'Library Users';
            FieldClass = FlowField;
            CalcFormula = count("Members Table");
        }
    }
    keys
    {
        key(PK; No)
        {
            Clustered = true;
        }
    }
}
