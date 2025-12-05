namespace LibraryManagementSystem.LibraryManagementSystem;
using Microsoft.Foundation.Company;

report 50101 BooksReport
{
    ApplicationArea = All;
    Caption = 'BooksReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout = RDLC;
    RDLCLayout = 'Layouts\Rep50101.BooksReport.rdlc';

    dataset
    {
        dataitem(BooksTable; "Books Table")
        {
            column(No; No)
            {
            }
            column(Title; Title)
            {
            }
            column(Author; Author)
            {
            }
            column(YearPublished; "Year Published")
            {
            }
            column(Edition; Edition)
            {
            }
            column(Genre; Genre)
            {
            }
            column(Description; Description)
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
        companyInfo.CalcFields(Picture);
    end;


}