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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Welcome Athlete!</h1>

    <center>
        <%

            Register reg = new Register();
            int identifiquer = reg.getTemp();
            Crud_Athele crr2 = new Crud_Athele();

            out.println("<h1> " + crr2.findAll().get(identifiquer).getName() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getLastname() + "</h1>");
            out.println("<h1> " + crr2.findAll().get(identifiquer).getIdentification_Card() + "</h1>");
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



</body>
</html>
