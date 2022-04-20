page 50140 "TestScannListMZLU"
{

    Caption = 'Test Scann List';
    PageType = List;
    SourceTable = "Scanned Data MZLU";
    UsageCategory = Lists;
    ApplicationArea = All;
    CardPageId = 50141;

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

                    // ScanRec.init();
                    // ScanRec.Data := Barcode;
                    // ScanRec.Insert(true);
                    rec.Get(ScanRec."Entry No.");
                    CurrPage.Update(false);
                end;

                trigger OnStartup()
                var
                    JObject: JsonObject;
                    Slides: JsonArray;
                begin
                    Slides.Add(AddSlide('Keep your promises', 'check before you make a promise', '//unsplash.it/1024/200'));
                    Slides.Add(AddSlide('Never forget', 'always register your conversations to ensure you follow-up promptly', '//unsplash.it/1025/200'));
                    Slides.Add(AddSlide('Qualify', 'be picky about which opportunities to spend time on', '//unsplash.it/1024/201'));
                    JObject.Add('slides', Slides);
                    //CurrPage.Carousel.SetCarouselData(JObject);
                end;
            }
            repeater(General)
            {
                field(ScannedPrimaryKey; rec.ScannedPrimaryKey)
                {
                    ApplicationArea = All;
                }

                field(ScannedDescription; rec.ScannedDescription)
                {
                    ApplicationArea = All;
                }

                field(ScannedItemTableName; rec.ScannedItemTableName)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    local procedure AddSlide(Title: Text; Description: Text; Image: Text): JsonObject
    var
        Slide: JsonObject;
    begin
        Slide.Add('title', Title);
        Slide.Add('description', Description);
        Slide.Add('image', Image);
        exit(Slide);
    end;
}
