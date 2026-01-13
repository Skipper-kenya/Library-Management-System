namespace LibraryManagementSystem.LibraryManagementSystem;

codeunit 50101 "FullName Validator"
{
    trigger OnRun()
    begin

    end;


    [EventSubscriber(ObjectType::Table, Database::"Authors Table", OnBeforeValidateEvent, "Full Name", true, true)]
    local procedure TableAuthorOnValidateName(var Rec: Record "Authors Table")
    begin
        validateFullName(Rec."Full Name");
    end;


    local procedure validateFullName(fullName: Text)
    begin
        if fullName.Contains('+') then
            Message('Full Name cannot contain the + character.');
    end;

}
