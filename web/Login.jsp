
<%@page import="Datos.Register"%>
<html lang="en">
    <head>
        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <!-- Basic Page Needs
      ================================================== -->
        <meta charset="utf-8">
        <title>Flat Login</title>
        <meta name="description" content="">
        <meta name="author" content="">

        <!-- Mobile Specific Metas
      ================================================== -->
        <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="Script/script1.js" type="text/javascript"></script>
        <link rel="stylesheet" href="CSS/style.css">

        <script>
            $(document).ready(function () {
                $('#login1').click(function (event) {

                    var Temp = "1";
                    var username1 = $('#username1').val();
                    var password2 = $('#password2').val();
                    alert(username1);
                    $.ajax({
                        url: "Login_Servlet",
                        data: {Temp: Temp, username1: username1, password: password2},
                        type: "POST",
                        success: function (respuesta) {

                            console.log(respuesta);
                            

                            if (respuesta.trim() == "Entrenador") {
                             
                                window.location.replace("Coach.jsp"); 
                                
                                
                            } else if (respuesta.trim() == "Deportista") {
                                window.location.replace("Athlete.jsp");
                            }

                        }
                    }
                    );
                });
            });
        </script>

        <script>
            $(document).ready(function () {
                $('#register1').click(function (event) {

                    var Temp = "2";
                    var Name = $('#Name2').val();
                    var Lastname = $('#Lastname2').val();
                    var Password = $('#Password21').val();
                    var Identification_Card = $('#Identification_Card2').val();
                    var Genre = $('#Genre2').val();
                    var Born_Date = $('#Born_Date2').val();
                    var Height = $('#Height2').val();
                    var weight = $('#weight2').val();
                    var Category = $('#Category2').val();
                    var Cellphone = $('#Cellphone2').val();
                    var Role1 = $('#Role1').val();
                    var Role2 = $('#Role2').val();
                    var Description = $('#Description2').val();
                    var Eps = $('#Eps2').val();
                    var Emergency_Number = $('#Emergency_Number2').val();
                    var Allergies = $('#Allergies2').val();
                    var Diseases = $('#Diseases2').val();
                    alert(Name);
                    // Si en vez de por post lo queremos hacer por get, cambiamos el $.post por $.get
                    $.ajax({
                        url: "Login_Servlet",
                        data: {Temp: Temp, Name: Name, Lastname: Lastname, Password: Password, Identification_Card: Identification_Card, Genre: Genre, Born_Date: Born_Date, Height: Height, weight: weight, Category: Category, Cellphone: Cellphone, Role1: Role1, Role2: Role2, Description: Description, Eps: Eps, Emergency_Number: Emergency_Number, Allergies: Allergies, Diseases: Diseases},
                        type: "POST",
                        success: function (respuesta) {
                            console.log(respuesta);
                        }
                    });
                });
            });
                
        </script>




        <!-- CSS
      ================================================== -->

        <!--[if lt IE 9]>
                    <script src="https://html5shim.googlecode.com/svn/trunk/html5.js"></script>
            <![endif]-->
    </head>
    <body>
        <div class

             ="container">
            <div class

                 ="flat-form">
                <ul class

                    ="tabs">
                    <li>
                        <a href="#login" class

                           ="active">Login</a>
                    </li>
                    <li>
                        <a href="#register">Register</a>
                    </li>
                    <li>
                        <a href="#reset">Reset Password</a>
                    </li>
                </ul>
                <div id="login" class

                     ="form-action show">
                    <h1>Login on webapp</h1>
                    <p>
                        Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
                        Maecenas sed diam eget risus varius bladit sit amet non
                    </p>
                    <form>
                        <ul>
                            <li>
                                <input id="username1" type="text" placeholder="Username" />
                            </li>
                            <li>
                                <input id="password2" type="password" placeholder="Password" />
                            </li>
                            <li>
                                <input id="login1" type="submit" value="Login" class ="button" />
                            </li>
                        </ul>
                    </form>
                </div>
                <!--/#login.form-action-->
                <div id="register" class

                     ="form-action hide">
                    <h1>Register</h1>
                    <p>
                        You should totally sign up for our super awesome service.
                        It's what all the cool kids are doing nowadays.
                    </p>
                    <form>
                        <ul>
                            <li>
                                <input id="Name2" type="text" placeholder="Name" />
                            </li>
                            <li>
                                <input id="Lastname2" type="text" placeholder="Lastname" />
                            </li>
                            <li>
                                <input id="Password21" type="text" placeholder="Password" />
                            </li>
                            <li>
                                <input id="Identification_Card2" type="text" placeholder="Identification_Card" />
                            </li>
                            <li>
                                <input id="Genre2" type="text" placeholder="Genre" />
                            </li>
                            <li>
                                <input id="Born_Date2" type="text" placeholder="Born_Date" />
                            </li>
                            <li>
                                <input id="Height2" type="text" placeholder="Height" />
                            </li>
                            <li>
                                <input id="weight2" type="text" placeholder="weight" />
                            </li>
                            <li>
                                <input id="Category2" type="text" placeholder="Category" />
                            </li>
                            <li>
                                <input id="Cellphone2" type="text" placeholder="Cellphone" />
                            </li>
                            <li>
                                <input type="checkbox" id="Role1" value="Role_Entrenador" onClick="value = 1"/>Entrenador
                            </li>
                            <li>
                                <input type="checkbox" id="Role2" value="Role_Deportista" onClick="value = 2"/>Deportista
                            </li>
                            <li>
                                <input id="Description2" type="text" placeholder="Description" />
                            </li>
                            <li>
                                <input id="Eps2" type="text" placeholder="Eps" />
                            </li>
                            <li>
                                <input id="Emergency_Number2" type="text" placeholder="Emergency_Number" />
                            </li>
                            <li>
                                <input id="Allergies2" type="text" placeholder="Allergies" />
                            </li>
                            <li>
                                <input id="Diseases2" type="text" placeholder="Diseases" />
                            </li>
                            <li>
                                <input id="register1" type="submit" value="Sign Up" class

                                       ="button" />
                            </li>
                        </ul>
                    </form>
                </div>
                <!--/#register.form-action-->
                <div id="reset" class

                     ="form-action hide">
                    <h1>Reset Password</h1>
                    <p>
                        To reset your password enter your email and your birthday
                        and we'll send you a link to reset your password.
                    </p>
                    <form>
                        <ul>
                            <li>
                                <input type="text" placeholder="Email" />
                            </li>
                            <li>
                                <input type="text" placeholder="Birthday" />
                            </li>
                            <li>
                                <input type="submit" value="Send" class

                                       ="button" />
                            </li>
                        </ul>
                    </form>
                </div>
                <!--/#register.form-action-->
            </div>
        </div>
        <script class
        ="cssdeck" src="//cdnjs.cloudflare.com/ajax/libs/jquery/1.8.0/jquery.min.js"></script>
    </body>
</html>
