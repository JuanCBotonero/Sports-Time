<%-- 
    Document   : Attendance
    Created on : 18-feb-2018, 18:18:31
    Author     : JCBOT
--%>

<%@page import="Dao.Crud_Athele"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>


        <script src="https://code.jquery.com/jquery-1.9.1.js"></script>

        <script>
            $(document).ready(function () {
                $('#listar1').click(function (event) {


                    var Athele0 = $('#Athele0').val();
                    var Athele1 = $('#Athele1').val();
                    var Athele2 = $('#Athele2').val();
                    var Athele3 = $('#Athele3').val();
                    var Athele4 = $('#Athele4').val();
                    var Athele5 = $('#Athele5').val();

                    $.ajax({
                        url: "Attendance_Servlet",
                        data: {Athele0: Athele0, Athele1: Athele1, Athele2: Athele2, Athele3: Athele3, Athele4: Athele4, Athele5: Athele5},
                        type: "POST",
                        success: function (respuesta) {
                            if (respuesta) {
                                window.location.replace("Coach.jsp");
                            }

                        }
                    }
                    );
                });
            });
        </script>



    </head>
    <body>
    <center>
        <h1>Hello World!</h1>




        <%
            Crud_Athele crr2 = new Crud_Athele();

        %>


        1  <input type="checkbox" id="Athele0" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(0).getName() + " " + crr2.findAll().get(0).getLastname()%>
        <p></p>
        2  <input type="checkbox" id="Athele1" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(1).getName() + " " + crr2.findAll().get(1).getLastname()%>
        <p></p>
        3  <input type="checkbox" id="Athele2" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(2).getName() + " " + crr2.findAll().get(2).getLastname()%>
        <p></p>
        4  <input type="checkbox" id="Athele3" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(3).getName() + " " + crr2.findAll().get(3).getLastname()%>
        <p></p>
        5  <input type="checkbox" id="Athele4" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(4).getName() + " " + crr2.findAll().get(4).getLastname()%>
        <p></p>
        6  <input type="checkbox" id="Athele5" value="Role_Entrenador" onClick="value = 1"/><%=crr2.findAll().get(5).getName() + " " + crr2.findAll().get(5).getLastname()%>
        <p></p>


        <div id="login" >

            <form>
                <ul>

                    <li>
                        <input id="listar1" type="submit" value="Listo"/>
                    </li>
                </ul>
            </form>
        </div>


    </center>
</body>
</html>
