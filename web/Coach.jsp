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

        <%

            HttpSession misession = request.getSession(true);

            if (misession.getAttribute("usuario") == "Deportista") {
                response.sendRedirect("Athlete.jsp");
            }


        %>



        <script>
            $(document).ready(function () {
                $('#list1').click(function (event) {

                    var Role1 = $('#Role1').val();
                    var Role2 = $('#Role2').val();
                    alert(Role1);
                    alert(Role2);
                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "list", Role1: Role1, Role2: Role2},
                        type: "POST",
                        success: function (respuesta) {

                            if (respuesta.trim() == "list") {
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
                        data: {Temp: "management"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "management") {
                                window.location.replace("Management.jsp");
                            }


                        }
                    });
                });
            });

        </script>

        <script>
            $(document).ready(function () {
                $('#sesionclose').click(function (event) {
                    $.ajax({
                        url: "Coach_Servlet",
                        data: {Temp: "close"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "close") {
                                window.location.replace("Login.jsp");
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
            Crud_Coach crr = new Crud_Coach();
            HttpSession misession1 = request.getSession(true);
            String h = String.valueOf(misession1.getAttribute("v"));
            int identifiquer = Integer.parseInt(h);

            out.println("<h1> " + identifiquer + "</h1>");
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


        <ul>

            <li>
                <input id="list1" type="submit" value="Lista"/>
                <input type="checkbox" id="Role1" value="Work day" onClick="value = 1"/>Morning
                <input type="checkbox" id="Role2" value="Work day" onClick="value = 2"/>Late

            </li>
            <li>
                <input id="management1" type="submit" value="Gestion" />
            </li>
            <li>
                <input id="sesionclose" type="submit" value="Cerrar sesion" />
            </li>
        </ul>

    </div>





</body>
</html>
