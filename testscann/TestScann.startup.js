//
//Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('OnStartup',[]);

import { fromEvent } from 'rxjs'; 

var Buffer;
var tmpBuffer;
var DropUntil74;
var LastDigit = new Date().getTime();

Buffer = '';
tmpBuffer = '';



fromEvent(Document, 'keypress').subscribe(() => alert('keypress!'));


window.parent.addEventListener('keydown', event => {
    // tmpBuffer = tmpBuffer + String.fromCharCode(event.keyCode);
    // console.log(tmpBuffer);

    var NewDigit = new Date().getTime();
    if (DropUntil74) {
        console.log(event);
        if (NewDigit - LastDigit > 200)
        {
            DropUntil74 = false;
            return;
        }
        if (event.keyCode == 74)
        {
            DropUntil74 = false;
            Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Scanned',[Buffer]);
            Buffer = '';
        }
        event.preventDefault();
        event.stopPropagation();
    }
    else {
        if (event.keyCode == 13 && NewDigit - LastDigit < 100) {
            DropUntil74 = false;
            Microsoft.Dynamics.NAV.InvokeExtensibilityMethod('Scanned',[Buffer]);
            Buffer = '';

            event.preventDefault();
            event.stopPropagation();
            // DropUntil74 = true;
        }
        else
            if (event.keyCode >= 48) {
                if (NewDigit - LastDigit < 100)
                {
                    Buffer = Buffer + String.fromCharCode(event.keyCode);
                    LastDigit = NewDigit;
                }
                else
                {
                    Buffer = String.fromCharCode(event.keyCode);
                    LastDigit = NewDigit;
                }
            }
    }
});