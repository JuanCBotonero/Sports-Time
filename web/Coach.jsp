<%-- 
    Document   : Coach
    Created on : 18-feb-2018, 14:44:00
    Author     : JCBOT
--%>

<%@page import="Datos.Register"%>
<%@page import="Dao.Crud_Coach"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>
        <script>
            $(document).ready(function () {
                $('#list1').click(function (event) {
                    $.ajax({
                        url: "Coach_Servlet",
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta) {
                                window.location.replace("Atheledance.jsp");
                            }

                        }
                    });
                });
            });

        </script>



        <script>
            $(document).ready(function () {
                $('#management1').click(function (event) {


                    $.ajax({
                        url: "Coach_Servlet",
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta) {
                                window.location.replace("Management.jsp");
                            }


                        }
                    });
                });
            });

        </script>


    </head>
    <body>
        <h1>Welcome Coach!</h1>

    <center>
        <%

            Register reg = new Register();
            int identifiquer = reg.getTemp();
            Crud_Coach crr = new Crud_Coach();

            out.println("<h1> " + crr.findAll().get(identifiquer).getName() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getLastname() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getIdentification_Card() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getGenre() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getBorn_Date() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getHeight() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getWeight() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getCategory() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getCellphone() + "</h1>");
            if (crr.findAll().get(identifiquer).getRole().equals("1")) {
                out.println("<h1> " + "Entrenador" + "</h1>");
            } else {
                out.println("<h1> " + "Deportista" + "</h1>");
            }

            out.println("<h1> " + crr.findAll().get(identifiquer).getDescription() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getEps() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getEmergency_Number() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getAllergies() + "</h1>");
            out.println("<h1> " + crr.findAll().get(identifiquer).getDiseases() + "</h1>");


        %>

    </center>


    <div id="login">

        <form>
            <ul>

                <li>
                    <input id="list1" type="submit" value="Lista"/>
                </li>
                <li>
                    <input id="management1" type="submit" value="Gestion" />
                </li>
            </ul>
        </form>
    </div>





</body>
</html>
