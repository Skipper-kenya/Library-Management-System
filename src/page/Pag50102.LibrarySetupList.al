namespace LibraryManagementSystem.LibraryManagementSystem;

page 50102 "Library Setup List"
{
    ApplicationArea = All;
    Caption = 'Library Setup List';
    PageType = List;
    SourceTable = "Library Setup";
    UsageCategory = Lists;
    CardPageId = "Library ";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(No; Rec.No)
                {
                    ToolTip = 'Specifies the value of the No field.', Comment = '%';
                }
                field("Library No"; Rec."Library No")
                {
                    ToolTip = 'Specifies the value of the Library No field.', Comment = '%';
                }
                field("Authors Nos"; Rec."Authors Nos")
                {
                    ToolTip = 'Specifies the value of the Author No field.', Comment = '%';
                }
                field("Staff Nos"; Rec."Staff Nos")
                {
                    ToolTip = 'Specifies the value of the Author No field.', Comment = '%';
                }

                field("Members Nos"; Rec."Members Nos")
                {
                    ToolTip = 'Specifies the value of the Author No field.', Comment = '%';
                }

                // field(SystemCreatedAt; Rec.SystemCreatedAt)
                // {
                //     ToolTip = 'Specifies the value of the SystemCreatedAt field.', Comment = '%';
                // }
                // field(SystemCreatedBy; Rec.SystemCreatedBy)
                // {
                //     ToolTip = 'Specifies the value of the SystemCreatedBy field.', Comment = '%';
                // }
                // field(SystemId; Rec.SystemId)
                // {
                //     ToolTip = 'Specifies the value of the SystemId field.', Comment = '%';
                // }
                // field(SystemModifiedAt; Rec.SystemModifiedAt)
                // {
                //     ToolTip = 'Specifies the value of the SystemModifiedAt field.', Comment = '%';
                // }
                // field(SystemModifiedBy; Rec.SystemModifiedBy)
                // {
                //     ToolTip = 'Specifies the value of the SystemModifiedBy field.', Comment = '%';
                // }
            }
        }
    }
}
