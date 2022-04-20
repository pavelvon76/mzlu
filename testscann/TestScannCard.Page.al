page 50141 "TestScannCardMZLU"
{
    Caption = 'TestScannCard';
    PageType = Card;
    SourceTable = "Scanned Data MZLU";

    layout
    {
        area(content)
        {

            usercontrol(Scanner; TestScannMZLU)
            {
                ApplicationArea = all;
                trigger Scanned(Barcode: Text)
                var
                    ScanRec: Record "Scanned Data MZLU";
                    ScannMgt: Codeunit ControlAddInManagementMZLU;
                begin

                    ScannMgt.FindScannedCode(Barcode, ScanRec);
                    CurrPage.Update(false);
                end;

            }
            group(General)
            {
                field(ScannedItemTableName; Rec.ScannedItemTableName)
                {
                    ToolTip = 'Specifies the value of the Found Record field.';
                    ApplicationArea = All;
                }
                field(ScannedPrimaryKey; Rec.ScannedPrimaryKey)
                {
                    ToolTip = 'Specifies the value of the Record Primary ID field.';
                    ApplicationArea = All;
                }
                field(ScannedDescription; Rec.ScannedDescription)
                {
                    ToolTip = 'Specifies the value of the Record Description field.';
                    ApplicationArea = All;
                }
            }
        }
    }
}
