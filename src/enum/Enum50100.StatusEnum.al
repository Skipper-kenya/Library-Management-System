namespace LibraryManagementSystem.LibraryManagementSystem;

enum 50100 "Status Enum"
{
    Extensible = true;

    value(0; "")
    {
        Caption = '';
    }
    value(1; Open)
    {
        Caption = 'Open';
    }
    value(2; Pending)
    {
        Caption = 'Pending';
    }
    value(3; Approved)
    {
        Caption = 'Approved';
    }
    value(4; Rejected)
    {
        Caption = 'Rejected';
    }
}
