controladdin "CarouselControlMZLU"
{
    HorizontalStretch = true;
    RequestedHeight = 200;

    // JS files required for Bootstrap
    // 'https://code.jquery.com/jquery-3.5.1.slim.min.js'
    Scripts = 'https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js';
    StartupScript = 'caruselExample/carusel.startup.js';

    // Bootstrap css
    StyleSheets = 'https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css';

    procedure SetCarouselData(Data: JsonObject);
    event OnStartup();
}