namespace LibraryManagementSystem.LibraryManagementSystem;
using Microsoft.Foundation.Reporting;
using Microsoft.Sales.Reports;

codeunit 50100 "Customer Report Substitute"
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::ReportManagement, OnAfterSubstituteReport, '', false, false)]
    local procedure ReportManagement_OnAfterSubstituteReport(ReportId: Integer; RunMode: Option; RequestPageXml: Text; RecordRef: RecordRef; var NewReportId: Integer)
    begin
        if ReportId = report::"Customer - List" then
            NewReportId := report::CustomerReport;
    end;

}
