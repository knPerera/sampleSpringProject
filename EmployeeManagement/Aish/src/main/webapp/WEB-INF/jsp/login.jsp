<html>

<head>
    <title>Praedictio</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <!--<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>-->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-backstretch/2.0.4/jquery.backstretch.min.js"></script>



    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans" rel="stylesheet">

    <link rel="stylesheet" href="../../css/cutom.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- jQuery library -->


    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>



</head>

<body class="login">
<div class="container">
    <div class="row">
        <div class="col-sm-4 col-sm-offset-4 form-box">
            <div class="login-wrapper">
                <div class="form-top" style="margin-top: -68px;">
                    <div class="form-top-left">
                        <img src="images/logo.png" alt="preadictio" class="img-responsive center-block preadictio-logo">
                    </div>
                </div>
                <div class="form-bottom">
                    <form role="form" action="/task/welcome" class="login-form dashboard-login">

                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                            <input id="form-username" type="text" class="form-control searchInput" name="username" value="" placeholder="Username">
                        </div>

                        <div class="form-group input-group">
                            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                            <input id="form-password" type="password" class="form-control searchInput" name="password" placeholder="Password">
                        </div>



                        <button type="submit" class="btn sign-in btn-default searchBtn" style="margin-top: 16px;">Log in</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<footer class="footer">
    <div class="container">
        <span class="text-muted">powered by @Ayesh<sup>©</sup></span>
    </div>
</footer>
<script type="text/javascript">
    jQuery(document).ready(function() {

        /*
            Fullscreen background
        */
        $.backstretch([
            "./images/dashboard.jpg"
            , "./images/bg/5.jpg"
        ], {duration: 3000, fade: 1500});

        /*
            Form validation
        */
        $('.login-form input[type="text"], .login-form input[type="password"], .login-form textarea').on('focus', function() {
            $(this).removeClass('input-error');
        });
        var errorFlag = true;
        $('.login-form .sign-in').on('click', function(e) {

            $('.login-form').find('input[type="text"], input[type="password"], textarea').each(function(){
                if( $(this).val() == "" ) {
                    e.preventDefault();
                    $(this).addClass('input-error');
                    errorFlag = true;
                }
                else {
                    $(this).removeClass('input-error');
                    errorFlag = false;
                }
            });
            if($("#form-username").val() == "admin" && $("#form-password").val() == "admin"){
                window.location.href = "http://localhost:8080/task/welcome";
            }
            else{
                return false;
            }

        });


    });
</script>
</body>

</html>