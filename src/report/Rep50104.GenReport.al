namespace LibraryManagementSystem.LibraryManagementSystem;
using Microsoft.Sales.Receivables;
using Microsoft.Foundation.Company;
using Microsoft.Sales.Customer;

report 50104 GenReport
{
    ApplicationArea = All;
    Caption = 'GenReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts/Rep50104.GenReport.rdlc';

    dataset
    {
        dataitem(Customer; Customer)
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {

            }
            column(E_Mail; "E-Mail")
            {

            }
            column(Address; Address)
            {

            }

            column(Logo; CompanyInfo.Picture)
            {

            }

            dataitem("Cust. Ledger Entry"; "Cust. Ledger Entry")
            {
                DataItemLink = "Customer No." = field("No.");


                column(Remaining_Amt___LCY_; "Remaining Amt. (LCY)")
                {
                }
                column(AccountType; "Bal. Account Type")
                {
                }
                column(ColumnName; "Global Dimension 1 Code")
                {

                }
                column(Entry_No_; "Entry No.")
                {

                }

            }
        }
    }
    requestpage
    {
        layout
        {
            area(Content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(Processing)
            {
            }
        }
    }




    var
        CompanyInfo: Record "Company Information";


    trigger OnPreReport()
    begin
        CompanyInfo.Get();
        CompanyInfo.CalcFields(CompanyInfo.Picture);
    end;
}
