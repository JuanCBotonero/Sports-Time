<%-- 
    Document   : Athlete
    Created on : 18-feb-2018, 14:44:39
    Author     : JCBOT
--%>

<%@page import="Datos.Register"%>
<%@page import="Dao.Crud_Athele"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <%

            HttpSession misession = request.getSession(true);

            if (misession.getAttribute("usuario") == "Entrenador") {
                response.sendRedirect("Coach.jsp");
            }


        %>





        <script>
            $(document).ready(function () {
                $('#Espalda').click(function (event) {
                    window.location.replace("Espalda_graph.jsp");

                    $.ajax({
                        success: function (respuesta) {



                        }
                    });
                });
            });

        </script>


        <script>
            $(document).ready(function () {
                $('#Libre').click(function (event) {
                    window.location.replace("libre_graph.jsp");

                    $.ajax({
                        success: function (respuesta) {



                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#Pecho').click(function (event) {
                    window.location.replace("pecho_graph.jsp");

                    $.ajax({
                        success: function (respuesta) {



                        }
                    });
                });
            });

        </script>


    </head>
    <body>
        <h1>Welcome Athlete!</h1>



        <div id="login">


            <ul>
                <li>
                    <input id="Espalda" type="submit" value="Espalda" />
                </li>
                <li>
                    <input id="Libre" type="submit" value="Libre" />
                </li>
                <li>
                    <input id="Pecho" type="submit" value="Pecho" />
                </li>

            </ul>

        </div>



    </body>
</html>
