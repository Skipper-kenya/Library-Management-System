namespace LibraryManagementSystem.LibraryManagementSystem;

using Microsoft.Sales.Customer;
using Microsoft.Foundation.Company;

report 50103 CustomerReport
{
    ApplicationArea = All;
    Caption = 'CustomerReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts\Rep50103.CustomerReport.rdlc';

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
            column(LocationCode; "Location Code")
            {
            }
            column(Age; Age)
            {
            }
            column(CompanyPicture; companyInfo.Picture)
            {

            }
            column(CompanyName; companyInfo.Name)
            {

            }
            column(ReportTitle; reportTitle)
            {

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
        reportTitle: Label 'Books Report';



    trigger OnPreReport()
    begin
        companyInfo.Get();
        companyInfo.CalcFields(companyInfo.Picture);
    end;
}
