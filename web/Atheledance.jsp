<%-- 
    Document   : Attendance
    Created on : 18-feb-2018, 18:18:31
    Author     : JCBOT
--%>

<%@page import="Dao.Crud_Coach"%>
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


                    var Name_Athele0 = $('#Name_Athele0').val();
                    var Athele0 = $('#Athele0').val();

                    var Name_Athele1 = $('#Name_Athele1').val();
                    var Athele1 = $('#Athele1').val();

                    var Name_Athele2 = $('#Name_Athele2').val();
                    var Athele2 = $('#Athele2').val();

                    var Name_Athele3 = $('#Name_Athele3').val();
                    var Athele3 = $('#Athele3').val();

                    var Name_Athele4 = $('#Name_Athele4').val();
                    var Athele4 = $('#Athele4').val();

                    var Name_Athele5 = $('#Name_Athele5').val();
                    var Athele5 = $('#Athele5').val();

                    var Coach_Name = $('#Coach_Name').val();
                    var Jornada = $('#Jornada').val();

                    $.ajax({
                        url: "Attendance_Servlet",
                        data: {Name_Athele0: Name_Athele0, Athele0: Athele0, Name_Athele1: Name_Athele1, Athele1: Athele1, Name_Athele2: Name_Athele2, Athele2: Athele2, Name_Athele3: Name_Athele3, Athele3: Athele3, Name_Athele4: Name_Athele4, Athele4: Athele4, Name_Athele5: Name_Athele5, Athele5: Athele5, Coach_Name: Coach_Name, Jornada: Jornada},
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
            Crud_Coach crr = new Crud_Coach();
            HttpSession misession1 = request.getSession(true);
            String h = String.valueOf(misession1.getAttribute("Role"));

            HttpSession misession2 = request.getSession(true);
            String h1 = String.valueOf(misession2.getAttribute("v"));
            int identifiquer = Integer.parseInt(h1);
            int[] temp2 = new int[6];
            int y = 0;

            for (int i = 0; i < crr2.findAll().size(); i++) {

                if (crr2.findAll().get(i).getCoach().equals(crr.findAll().get(identifiquer).getName() + " " + crr.findAll().get(identifiquer).getLastname()) && crr2.findAll().get(i).getJornada().equals(h)) {

                    temp2[y] = i;
                    y++;
                }

            }
        %>



        <label type="texto" id="Coach_Name" value="<%=crr.findAll().get(identifiquer).getName() + " " + crr.findAll().get(identifiquer).getLastname()%>">Welcome Coach <%=crr.findAll().get(identifiquer).getName() + " " + crr.findAll().get(identifiquer).getLastname()%></label>
        <p></p>

        <label type="texto" id="Jornada" value="<%=h%>">Working day <%=h%></label>
        <p></p>

        1 <label type="texto" id="Name_Athele0" value="<%=crr2.findAll().get(temp2[0]).getName() + " " + crr2.findAll().get(temp2[0]).getLastname()%>"><%=crr2.findAll().get(temp2[0]).getName() + " " + crr2.findAll().get(temp2[0]).getLastname()%></label>
        <input type="checkbox" id="Athele0" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        2 <label type="texto" id="Name_Athele1" value="<%=crr2.findAll().get(temp2[1]).getName() + " " + crr2.findAll().get(temp2[1]).getLastname()%>"><%=crr2.findAll().get(temp2[1]).getName() + " " + crr2.findAll().get(temp2[1]).getLastname()%></label>
        <input type="checkbox" id="Athele1" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        3 <label type="texto" id="Name_Athele2" value="<%=crr2.findAll().get(temp2[2]).getName() + " " + crr2.findAll().get(temp2[2]).getLastname()%>"><%=crr2.findAll().get(temp2[2]).getName() + " " + crr2.findAll().get(temp2[2]).getLastname()%></label>
        <input type="checkbox" id="Athele2" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        4 <label type="texto" id="Name_Athele3" value="<%=crr2.findAll().get(temp2[3]).getName() + " " + crr2.findAll().get(temp2[3]).getLastname()%>"><%=crr2.findAll().get(temp2[3]).getName() + " " + crr2.findAll().get(temp2[3]).getLastname()%></label>
        <input type="checkbox" id="Athele3" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        5 <label type="texto" id="Name_Athele4" value="<%=crr2.findAll().get(temp2[4]).getName() + " " + crr2.findAll().get(temp2[4]).getLastname()%>"><%=crr2.findAll().get(temp2[4]).getName() + " " + crr2.findAll().get(temp2[4]).getLastname()%></label>
        <input type="checkbox" id="Athele4" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        6 <label type="texto" id="Name_Athele5" value="<%=crr2.findAll().get(temp2[5]).getName() + " " + crr2.findAll().get(temp2[5]).getLastname()%>"><%=crr2.findAll().get(temp2[5]).getName() + " " + crr2.findAll().get(temp2[5]).getLastname()%></label>
        <input type="checkbox" id="Athele5" value="Role_Entrenador" onClick="value = 1"/>
        <p></p>


        <div id="login" >


            <ul>

                <li>
                    <input id="listar1" type="submit" value="Listo"/>
                </li>
            </ul>

        </div>


    </center>
</body>
</html>
