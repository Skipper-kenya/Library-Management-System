namespace LibraryManagementSystem.LibraryManagementSystem;

using Microsoft.Bank.BankAccount;
using Microsoft.Bank.Ledger;
using Microsoft.Foundation.Company;

report 50102 BankReport
{
    ApplicationArea = All;
    Caption = 'BankReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts\Rep50102.BankReport.rdlc';


    dataset
    {
        dataitem(BankAccount; "Bank Account")
        {
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(BankAccountNo; "Bank Account No.")
            {
            }
            column(BalanceLCY; "Balance (LCY)")
            {
            }
            column(companyName; companyInfo.Name)
            {

            }
            column(companyLogo; companyInfo.Picture)
            {

            }

            column(ReportTitle; reportTitle)
            {

            }



            dataitem("Bank Account Ledger Entry"; "Bank Account Ledger Entry")
            {
                DataItemLink = "Bank Account No." = field("No.");

                column(EntryNo; "Entry No.")
                {
                }
                column(Description; Description)
                {
                }
                column(AmountLCY; "Amount (LCY)")
                {
                }
                column(Posting_Date; "Posting Date")
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
        companyInfo: Record "Company Information";
        reportTitle: Label 'Bank Accounts Report';

    trigger OnPreReport()
    begin
        companyInfo.Get();
        companyInfo.CalcFields(Picture);
    end;
}
