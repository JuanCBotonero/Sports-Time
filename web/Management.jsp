<%-- 
    Document   : Management
    Created on : 18-feb-2018, 18:22:58
    Author     : JCBOT
--%>

<%@page import="Dao.Crud_Athele"%>
<%@page import="Dao.Crud_Coach"%>
<%@page import="Dao.Crud_List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>

        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <script>
            $(document).ready(function () {
                $('#Espalda').click(function (event) {

                    var Espalda = $('#Espalda').val();
                    var Libre = $('#Libre').val();
                    var Pecho = $('#Pecho').val();

                    $.ajax({
                        url: "Management_Servlet",
                        data: {Espalda: Espalda, Libre: Libre, Pecho: Pecho},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "Espalda") {
                                window.location.replace("Espalda.jsp");
                            } else if (respuesta.trim() == "Libre") {
                                window.location.replace("Libre.jsp");
                            } else if (respuesta.trim() == "Pecho") {
                                window.location.replace("Pecho.jsp");
                            }

                        }
                    });
                });
            });

        </script>


        <script>
            $(document).ready(function () {
                $('#Libre').click(function (event) {

                    var Espalda = $('#Espalda').val();
                    var Libre = $('#Libre').val();
                    var Pecho = $('#Pecho').val();

                    $.ajax({
                        url: "Management_Servlet",
                        data: {Espalda: Espalda, Libre: Libre, Pecho: Pecho},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "Espalda") {
                                window.location.replace("Espalda.jsp");
                            } else if (respuesta.trim() == "Libre") {
                                window.location.replace("Libre.jsp");
                            } else if (respuesta.trim() == "Pecho") {
                                window.location.replace("Pecho.jsp");
                            }

                        }
                    });
                });
            });

        </script>


        <script>
            $(document).ready(function () {
                $('#Pecho').click(function (event) {

                    var Espalda = $('#Espalda').val();
                    var Libre = $('#Libre').val();
                    var Pecho = $('#Pecho').val();

                    $.ajax({
                        url: "Management_Servlet",
                        data: {Espalda: Espalda, Libre: Libre, Pecho: Pecho},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "Espalda") {
                                window.location.replace("Espalda.jsp");
                            } else if (respuesta.trim() == "Libre") {
                                window.location.replace("Libre.jsp");
                            } else if (respuesta.trim() == "Pecho") {
                                window.location.replace("Pecho.jsp");
                            }

                        }
                    });
                });
            });

        </script>



    </head>
    <body>

        <h1>Welcome Routines!</h1>


        <div id="login" >
            
                <ul>

                    <%
                        Crud_Athele lista = new Crud_Athele();


                    %>


                    <input type="submit" id="Espalda" value="Espalda" onClick="value = 1"/>  
                    <p></p>
                    <input type="submit" id="Libre" value="Libre" onClick="value = 1"/>
                    <p></p>
                    <input type="submit" id="Pecho" value="Pecho" onClick="value = 1"/> 




                    </li>
                </ul>
           
        </div>



    </body>
</html>
