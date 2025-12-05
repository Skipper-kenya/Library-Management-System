namespace LibraryManagementSystem.LibraryManagementSystem;
using System.Visualization;

page 50105 "Library Role Center"
{
    ApplicationArea = All;
    Caption = 'Library Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(Headline; "Library Headline")
            { }

            part(Cues; "Library Cue") { }
        }
    }

    actions
    {
        area(Sections)
        {
            group(Books)
            {
                action("Books List")
                {
                    ApplicationArea = All;
                    RunObject = page "Books List";
                }


            }

            group("Authors")
            {
                action("&Authors List")
                {
                    ApplicationArea = All;
                    RunObject = page "Authors List";
                }
            }

            group("Library Staff")
            {
                action("&Staff List")
                {
                    ApplicationArea = All;
                    RunObject = page "Staff List";
                }
            }

            group("Library Users")
            {
                action("&Members")
                {
                    ApplicationArea = All;
                    RunObject = page "Members List";
                }
            }
        }


        area(Embedding)
        {
            action("Library Setup")
            {
                ApplicationArea = All;
                RunObject = page "Library Setup List";
            }
            action("Books Reports")
            {
                ApplicationArea = All;
                RunObject = report BooksReport;
            }
        }

        area(Creation)
        {
            action("Add Book")
            {
                ApplicationArea = All;
                RunObject = page Books;
                RunPageMode = Create;
            }
            action("Add Author")
            {
                ApplicationArea = All;
                RunObject = page Authors;
                RunPageMode = Create;
            }

            action("Add Staff")
            {
                ApplicationArea = All;
                RunObject = page Staff;
                RunPageMode = Create;
            }
            action("Add Member")
            {
                ApplicationArea = All;
                RunObject = page Members;
                RunPageMode = Create;
            }
        }


    }
}


profile Library
{
    ProfileDescription = 'Library Management System Role Center';
    Caption = 'Library Role Center';
    RoleCenter = "Library Role Center";
}