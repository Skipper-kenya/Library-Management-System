namespace LibraryManagementSystem.LibraryManagementSystem;
using System.Utilities;

report 50100 "Date Report"
{
    ApplicationArea = All;
    Caption = 'Date Report';
    UsageCategory = ReportsAndAnalysis;
    ProcessingOnly = true;

    dataset
    {
        dataitem("Date Report"; Date)
        {
            column(Period_Name; "Period Name")
            {
                Caption = 'Period Name';
            }


            trigger OnPreDataItem()
            begin
                Message('OnPreDataItem triggered for Date Report data item.');
            end;
        }
    }


    requestpage
    {
        layout
        {
            area(Content)
            {
                group(General)
                {
                    field("Max Day"; MaxDay)
                    {
                        Caption = 'Latest Date';
                    }

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
        MaxDay: Integer;

    trigger OnInitReport()
    begin
        Message('Initializing Date Report...');
        MaxDay := Date2DMY(Today(), 3);
    end;


    trigger OnPreReport()
    begin
        Message('Preparing to generate the Date Report...');
    end;

}
