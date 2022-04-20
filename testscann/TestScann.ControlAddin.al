controladdin "TestScannMZLU"
{
    MaximumHeight = 400;
    MaximumWidth = 400;
    MinimumHeight = 400;
    MinimumWidth = 400;
    HorizontalShrink = true;
    VerticalShrink = true;
    RequestedHeight = 400;
    RequestedWidth = 400;


    // The StartupScript is a special script that the web client calls once the page is loaded.
    // StartupScript = 'startup.js';
    // The Scripts property can reference both external and local scripts.
    Scripts = 'https://code.jquery.com/jquery-3.5.1.slim.min.js';


    // Specifies the StyleSheets that are included in the control add-in.
    StyleSheets = 'src/stylesheet/ControlAddIn.css';
    StartupScript = 'testscann/ReactStartup.js';

    // The event declarations specify what callbacks could be raised from JavaScript by using the webclient API:
    // Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('CallBack', [42, 'some text', 5.8, 'c'])
    procedure SetData(Data: JsonObject);
    event OnStartup();
    event Scanned(Barcode: Text);
}