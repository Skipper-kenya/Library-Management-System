namespace LibraryManagementSystem.LibraryManagementSystem;
using Microsoft.Sales.Document;

page 50113 "Library Cue"
{
    ApplicationArea = All;
    Caption = 'Library Insights';
    PageType = CardPart;
    SourceTable = "LibraryCues Table";

    layout
    {
        area(Content)
        {
            cuegroup(Books)
            {

                field("&Books"; Rec.Books)
                {
                    Caption = 'No of Books';
                    DrillDownPageId = "Books List";
                }

                field("&Authors"; Rec.Authors)
                {
                    Caption = 'Total Authors';
                    DrillDownPageId = "Authors List";
                }
                field("&Staff"; Rec.Staff)
                {
                    Caption = 'Total No. of Staff';
                    DrillDownPageId = "Staff List";
                }
                field("&Users"; Rec.Users)
                {
                    Caption = 'Total Users';
                    DrillDownPageId = "Members List";
                }
            }




            // cuegroup(SalesActionontainer)
            // {
            //     Caption = 'New Sales Invoice';

            //     actions
            //     {

            //         action(ActionName)
            //         {
            //             RunObject = page "Sales Invoice";
            //             Image = TileNew;

            //             trigger OnAction()
            //             begin

            //             end;
            //         }
            //     }
            // }
        }
    }


    //initialize fields
    trigger OnOpenPage()
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;

    end;

}
