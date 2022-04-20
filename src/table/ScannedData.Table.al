table 54100 "Scanned Data MZLU"
{
    Caption = 'Scanned Data';
    DataClassification = ToBeClassified;
    LookupPageId = 50140;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            AutoIncrement = true;
            DataClassification = ToBeClassified;
        }

        field(10; ScannedItemTableName; Text[30])
        {
            Caption = 'Found Record';
            DataClassification = CustomerContent;
        }
        field(11; ScannedPrimaryKey; Text[20])
        {
            Caption = 'Record Primary ID';
            DataClassification = CustomerContent;
        }

        field(12; ScannedDescription; Text[50])
        {
            Caption = 'Record Description';
            DataClassification = CustomerContent;
        }
        field(2; Data; Text[50])
        {
            Caption = 'Data';
            DataClassification = CustomerContent;
        }



    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
    }

}
