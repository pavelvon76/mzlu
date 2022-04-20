codeunit 50140 "ControlAddInManagementMZLU"
{
    trigger OnRun()
    begin

    end;

    procedure FindScannedCode(inCode: text; var inScannData: Record "Scanned Data MZLU") outJnsObj: JsonObject
    var
        item: Record Item;
        outData: JsonArray;
        ItemReference: Record "Item Reference";
    begin

        if item.get(inCode) then begin
            outData.Add(AddOutData('Keep your promises', 'check before you make a promise', item.SystemId));

            inScannData.Init();
            inScannData.ScannedPrimaryKey := item."No.";
            inScannData.ScannedDescription := copystr(item.Description, 1, 50);
            inScannData.ScannedItemTableName := copystr(item.TableCaption, 1, 30);
            inScannData.Insert(true);
            exit;
        end;

        ItemReference.Reset();
        ItemReference.SetRange("Reference No.", incode);
        if ItemReference.FindFirst() then begin
            inScannData.Init();
            inScannData.ScannedPrimaryKey := ItemReference."Item No.";
            if ItemReference.Description <> '' then
                inScannData.ScannedDescription := copystr(ItemReference.Description, 1, 50)
            else begin
                item.Get(ItemReference."Item No.");
                inScannData.ScannedDescription := copystr(item.Description, 1, 50);
            end;
            inScannData.ScannedItemTableName := copystr(ItemReference.TableCaption, 1, 30);
            inScannData.Insert(true);
            exit;
        end;



        // else
        inScannData.Init();
        inScannData.ScannedPrimaryKey := copystr(inCode, 1, 20);
        inScannData.Insert(true);

        outJnsObj.Add('ScannedInfo', outData);

    end;

    local procedure AddOutData(Number: Text; Description: Text; inRecordGuid: Guid): JsonObject
    var
        Data2Out: JsonObject;
    begin
        Data2Out.Add('title', Number);
        Data2Out.Add('description', Description);
        Data2Out.Add('recordid', inRecordGuid);

        //Slide.Add('image', Image);
        exit(Data2Out);
    end;
}



