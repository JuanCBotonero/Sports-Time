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
                $('#sesionclose').click(function (event) {
                    $.ajax({
                        url: "Athlete_Servlet",
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
        
          <script>
            $(document).ready(function () {
                $('#grafica_unica').click(function (event) {
                    
                    
                    $.ajax({
                        url: "Athlete_Servlet",
                        data: {Temp: "uniquegraph"},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta.trim() == "uniquegraph") {
                                window.location.replace("uniquegraph.jsp");
                            }


                        }
                    });
                });
            });

        </script>



    </head>
    <body>
        <h1>Welcome Athlete!</h1>

    <center>
        <%            
                     
                       
            Crud_Athele crr2 = new Crud_Athele();
            HttpSession misession1 = request.getSession(true);
            String h = String.valueOf(misession1.getAttribute("v"));
            int identifiquer = Integer.parseInt(h);
            

            out.println("<h1> " + crr2.findAll().get(identifiquer).getName() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getLastname() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getIdentification_Card() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getCoach()+ "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getJornada()+ "</h1>");     
            out.println("<h1> " + crr2.findAll().get(identifiquer).getGenre() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getBorn_Date() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getHeight() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getWeight() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getCategory() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getCellphone() + "</h1>");
            if (crr2.findAll().get(identifiquer).getRole() == "1") {
                out.println("<h1> " + "Entrenador" + "</h1>");
            } else {
                out.println("<h1> " + "Deportista" + "</h1>");
            }

            out.println("<h1> " + crr2.findAll().get(identifiquer).getDescription() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getEps() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getEmergency_Number() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getAllergies() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getDiseases() + "</h1>");


        %>

    </center>

    <div id="login">


        <ul>
            <li>
                <input id="grafica_unica" type="submit" value="Grafica de rendimiento" />
            </li>
            <li>
                <input id="sesionclose" type="submit" value="Cerrar sesion" />
            </li>

        </ul>

    </div>



</body>
</html>
