namespace LibraryManagementSystem.LibraryManagementSystem;

using Microsoft.Sales.Customer;

pageextension 50100 Customers extends "Customer Card"
{
    layout
    {
        addafter(General)
        {
            group(Proffession)
            {
                field(Specialization; Rec.Specialization)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specialization';
                }
            }
        }

        movefirst(General; Blocked, "Balance Due (LCY)")
        modify(Name)
        {
            Caption = 'Full Name';
        }
        addafter(Name)
        {
            field(Age; Rec.Age)
            {
                ApplicationArea = All;
                ToolTip = 'Age';
            }
        }
    }
}
