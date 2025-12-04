namespace LibraryManagementSystem.LibraryManagementSystem;

page 50106 "Library Headline"
{
    ApplicationArea = All;
    Caption = 'Library Headline';
    PageType = HeadlinePart;

    layout
    {
        area(Content)
        {
            field(Welcome; WelcomeText)
            {
                Caption = 'Greetings';
            }
            field("&Welcome"; Text2)
            {
                Caption = 'Welcome Text';
            }
        }
    }




    var
        WelcomeText: Text;
        Text2: Text;

    trigger OnOpenPage()
    begin
        WelcomeText := 'Welcome !';
        Text2 := 'All in One.'
    end;

}
