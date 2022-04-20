function GenerateHtml() {
    var myHtmlText = '<b>TEMATA 6. ročník</b>' +
    '<div class="blok"><ul>'+
    '   <li>Početní operace s desetinnými čísly</li>'+
    '   <li>Aritmetický průměr</li>'+
    '   <li>Dělitelnost přirozených čísel</li>'+ 
    '   <li>Krychle a kvádr</li>'+ 
    '   <li>Logické úlohy</li>'+
    '</ul></div>';
    myHtmlText += '<a href="https://htmlpreview.github.io/?https://github.com/pavelvon76/poutnici/blob/master/index.html">follow the rabit</a>';
    //dejHTMLData('data/temata7.html') 

    HTMLContainer.insertAdjacentHTML('beforeend',myHtmlText);
}