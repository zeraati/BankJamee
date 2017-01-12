
$(document).ready(function () {
    $('.tooltipped').tooltip({ delay: 50 });

    $('.collapsible').collapsible();

});



function Alert($typ, $message, $timeShow) {
    var $color;
    switch ($typ) {
        case 'Success':$color = 'green';break;
        case 'Info': $color = 'blue';break;
        case 'Warning':; $color = 'orange';break;
        case 'Danger':$color = 'red';break;
    }
    Materialize.toast($message, $timeShow, $color);
}

