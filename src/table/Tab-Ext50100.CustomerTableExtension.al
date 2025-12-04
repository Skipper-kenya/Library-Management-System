namespace LibraryManagementSystem.LibraryManagementSystem;

using Microsoft.Sales.Customer;

tableextension 50100 "Customer Table Extension" extends customer
{
    fields
    {
        field(50100; Specialization; Text[100])
        {
            Caption = 'Specialization';
            DataClassification = ToBeClassified;
        }
        field(50101; Age; Integer)
        {
            Caption = 'Age';
            DataClassification = ToBeClassified;
        }
    }
}
