pageextension 50000 "Business Manager Role C. MZLU" extends "Business Manager Role Center"
{

    actions
    {
        addlast(embedding)
        {
            action(scanningappMZLU)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Scanning App';
                RunObject = Page "TestScannListMZLU";
                ToolTip = 'Scanning App TEST AREA';
            }
        }
    }
}
