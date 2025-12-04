#pragma warning disable N0301
table 50109 "Library Setup"
#pragma warning restore N0301
{
    Caption = 'Library Setup';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; No; Code[50])
        {
            Caption = 'No';
            Editable = false;
        }
        field(2; "Library No"; Code[50])
        {
            Caption = 'Library No';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }

        field(3; "Authors Nos"; Code[50])
        {
            Caption = 'Authors No';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(4; "Staff Nos"; Code[50])
        {
            Caption = 'Staff No';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
        }
        field(5; "Members Nos"; Code[50])
        {
            Caption = 'Members No';
            TableRelation = "No. Series";
            DataClassification = ToBeClassified;
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
