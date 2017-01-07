
    $(document).ready(function () {
        $('.tooltipped').tooltip({ delay: 50 });

        $('.collapsible').collapsible();

        $("#ContentPlaceHolder1_btnTest").click(function () {
            $(".alert").hide(2000);
        });

        $("#show").click(function () {
            $("p").show();
        });
    });

    
    function AlertSuccess($msg) {
        Materialize.toast($msg, 2500, 'green');
    }

    function AlertInfo($msg) {
        Materialize.toast($msg, 2500, 'blue');
    }

    function AlertWarning($msg) {
        Materialize.toast($msg, 2500, 'orange');
    }

    function AlertDanger($msg) {
        Materialize.toast($msg, 2500, 'red');
    }
