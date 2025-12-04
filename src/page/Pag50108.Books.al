namespace LibraryManagementSystem.LibraryManagementSystem;
using Microsoft.Sales.Customer;

page 50107 Books
{
    ApplicationArea = All;
    Caption = 'Books';
    PageType = Card;
    SourceTable = "Books Table";

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field(Title; Rec.Title)
                {
                    ToolTip = 'Specifies the value of the Title field.', Comment = '%';
                }
                field(Author; Rec.Author)
                {
                    ToolTip = 'Specifies the value of the Author field.', Comment = '%';
                }
                field(Genre; Rec.Genre)
                {
                    ToolTip = 'Specifies the value of the Genre field.', Comment = '%';
                }
                field(Description; Rec.Description)
                {
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
            }

            group(Secondary)
            {
                field("Year Published"; Rec."Year Published")
                {
                    ToolTip = 'Specifies the value of the Year Published field.', Comment = '%';
                }
                field(Edition; Rec.Edition)
                {
                    ToolTip = 'Specifies the value of the Edition field.', Comment = '%';
                }
            }

            group("System Information")
            {
                field(SystemCreatedAt; Rec.SystemCreatedAt)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                }
                field(SystemCreatedBy; Rec.SystemCreatedBy)
                {
                    ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                }
                field(SystemId; Rec.SystemId)
                {
                    ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                }
                field(SystemModifiedAt; Rec.SystemModifiedAt)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                }
                field(SystemModifiedBy; Rec.SystemModifiedBy)
                {
                    ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                }
            }
        }
    }
    actions
    {

        area(Navigation)
        {
            // Adds the action called "My Navigate" to the Navigate menu. 
            action("My Navigate")
            {
                ApplicationArea = All;
                RunObject = page "Books List";
            }
        }

        area(Processing)
        {

            action(Approve)
            {
                ApplicationArea = All;
                Image = Approval;
                trigger OnAction()
                begin
                    Message('Dont click me!');
                end;
            }


            action(Reject)
            {
                ApplicationArea = All;
                Image = Reject;
                trigger OnAction()
                begin
                    Message('I have just told you not to click me!');
                end;
            }

        }
    }


}
