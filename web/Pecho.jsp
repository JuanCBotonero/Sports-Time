<%@page import="Datos.List1"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="Dao.Crud_Coach"%>
<%@page import="Dao.Crud_Athele"%>
<%@page import="Dao.Crud_List"%>
<script src="https://code.jquery.com/jquery-1.9.1.js"></script>




<script>
    $(document).ready(function () {
        $('#finalizar').click(function (event) {


    <%

        Crud_List lista2 = new Crud_List();
        Crud_Athele athel2 = new Crud_Athele();
        Crud_Coach crr2 = new Crud_Coach();

        int[] temp22 = new int[6];
        int y2 = 0;

        HttpSession misession12 = request.getSession(true);
        String h22 = String.valueOf(misession12.getAttribute("jornada"));

        HttpSession misession22 = request.getSession(true);
        String h12 = String.valueOf(misession22.getAttribute("v"));
        int identifiquer22 = Integer.parseInt(h12);

        Date date2 = new Date();
        DateFormat hourdateFormat2 = new SimpleDateFormat("yyyy/MM/dd");
        System.out.println("Hora y fecha: " + hourdateFormat2.format(date2));
        String fecha_y_hora2 = hourdateFormat2.format(date2);

        List1 listxx = new List1();

        System.out.println("este es del el ajax");
        System.out.println(listxx.getJornada());
        System.out.println(misession12.getAttribute("jornada"));
        System.out.println("este es del el ajax");

        for (int i = 0; i < lista2.findAll().size(); i++) {

            if (lista2.findAll().get(i).getDate().equals(fecha_y_hora2) && lista2.findAll().get(i).getCoach_Name().equals(crr2.findAll().get(identifiquer22).getName() + " " + crr2.findAll().get(identifiquer22).getLastname()) && lista2.findAll().get(i).getJornada().equals(h22)) {
                temp22[y2] = i;

                y2++;
            }

        }

        if (lista2.findAll().get(temp22[0]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele0 = document.getElementById("Name_Athele0").innerHTML;
            var Athele0 = cronometro1();

    <%                } else {


    %>
            var Name_Athele0 = null;
            var Athele0 = null;


    <%        }
    %>







    <%
        if (lista2.findAll().get(temp22[1]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele1 = document.getElementById("Name_Athele1").innerHTML;
            var Athele1 = cronometro2();

    <%                } else {


    %>
            var Name_Athele1 = null;
            var Athele1 = null;


    <%        }
    %>


    <%
        if (lista2.findAll().get(temp22[2]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele2 = document.getElementById("Name_Athele2").innerHTML;
            var Athele2 = cronometro3();

    <%                } else {


    %>
            var Name_Athele2 = null;
            var Athele2 = null;


    <%        }
    %>

    <%
        if (lista2.findAll().get(temp22[3]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele3 = document.getElementById("Name_Athele3").innerHTML;
            var Athele3 = cronometro4();

    <%                } else {


    %>
            var Name_Athele3 = null;
            var Athele3 = null;


    <%        }
    %>

    <%
        if (lista2.findAll().get(temp22[4]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele4 = document.getElementById("Name_Athele4").innerHTML;
            var Athele4 = cronometro5();

    <%                } else {


    %>
            var Name_Athele4 = null;
            var Athele4 = null;


    <%        }
    %>

    <%
        if (lista2.findAll().get(temp22[5]).getAthele0().equals("Asistio")) {


    %>
            var Name_Athele5 = document.getElementById("Name_Athele5").innerHTML;
            var Athele5 = cronometro6();

    <%                } else {


    %>
            var Name_Athele5 = null;
            var Athele5 = null;


    <%        }
    %>






            var Cantidad = $('#Cantidad').val();
            var Distancia = $('#Distancia').val();

            alert(Name_Athele1);

            $.ajax({
                url: "Pecho_Servlet",
                data: {Cantidad: Cantidad, Distancia: Distancia, Name_Athele0: Name_Athele0, Athele0: Athele0, Name_Athele1: Name_Athele1, Athele1: Athele1, Name_Athele2: Name_Athele2, Athele2: Athele2, Name_Athele3: Name_Athele3, Athele3: Athele3, Name_Athele4: Name_Athele4, Athele4: Athele4, Name_Athele5: Name_Athele5, Athele5: Athele5},
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


<script src="Script/script_crono.js" type="text/javascript"></script>
<link rel="stylesheet" href="CSS/style_crono.css">


<div id="login1">

    <ul>
        <li>
            <input id="Cantidad" type="text" placeholder="Cantidad" />
        </li>
        <li>
            <input id="Distancia" type="text" placeholder="Distancia" />
        </li>
    </ul>

</div>


<%    Crud_List lista1 = new Crud_List();
    Crud_Athele athele = new Crud_Athele();
    Crud_Coach crr = new Crud_Coach();

    int[] temp2 = new int[6];
    int y = 0;

    HttpSession misession1 = request.getSession(true);
    String h = String.valueOf(misession1.getAttribute("jornada"));

    HttpSession misession2 = request.getSession(true);
    String h1 = String.valueOf(misession2.getAttribute("v"));
    int identifiquer = Integer.parseInt(h1);

    Date date = new Date();
    DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd");
    System.out.println("Hora y fecha: " + hourdateFormat.format(date));
    String fecha_y_hora = hourdateFormat.format(date);

    System.out.println("-----------------------------------------");
    System.out.println(lista1.findAll().get(0).getDate());
    System.out.println(lista1.findAll().get(0).getCoach_Name());
    System.out.println(lista1.findAll().get(0).getJornada());
    System.out.println("-----------------------------------------");

    System.out.println("-----------------------------------------");
    System.out.println(fecha_y_hora);
    System.out.println(h1);
    System.out.println(h);
    System.out.println("-----------------------------------------");

    for (int i = 0; i < lista1.findAll().size(); i++) {

        if (lista1.findAll().get(i).getDate().equals(fecha_y_hora) && lista1.findAll().get(i).getCoach_Name().equals(crr.findAll().get(identifiquer).getName() + " " + crr.findAll().get(identifiquer).getLastname()) && lista1.findAll().get(i).getJornada().equals(h)) {
            temp2[y] = i;
            y++;
        }

    }

    if (lista1.findAll().get(temp2[0]).getAthele0().equals("Asistio")) {


%>

<label type="text" id="Name_Athele0" value="<%=lista1.findAll().get(temp2[0]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[0]).getName_Athele0()%></label>

<div id="contenedor1">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas1">00</div>
    <div class="reloj" id="Minutos1">:00</div>
    <div class="reloj" id="Segundos1">:00</div>
    <div class="reloj" id="Centesimas1">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio1" value="Start &#9658;" onclick="inicio1();">
    <input type="button" class="boton" id="parar1" value="Stop &#8718;" onclick="parar1();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>

<%    }
%>



<%
    if (lista1.findAll().get(temp2[1]).getAthele0().equals("Asistio")) {


%>
<label type="text" id="Name_Athele1" value="<%=lista1.findAll().get(temp2[1]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[1]).getName_Athele0()%></label>

<div id="contenedor2">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas2">00</div>
    <div class="reloj" id="Minutos2">:00</div>
    <div class="reloj" id="Segundos2">:00</div>
    <div class="reloj" id="Centesimas2">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio2" value="Start &#9658;" onclick="inicio2();">
    <input type="button" class="boton" id="parar2" value="Stop &#8718;" onclick="parar2();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>
<%    }
%>

<%
    if (lista1.findAll().get(temp2[2]).getAthele0().equals("Asistio")) {


%>
<label type="text" id="Name_Athele2" value="<%=lista1.findAll().get(temp2[2]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[2]).getName_Athele0()%></label>

<div id="contenedor3">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas3">00</div>
    <div class="reloj" id="Minutos3">:00</div>
    <div class="reloj" id="Segundos3">:00</div>
    <div class="reloj" id="Centesimas3">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio3" value="Start &#9658;" onclick="inicio3();">
    <input type="button" class="boton" id="parar3" value="Stop &#8718;" onclick="parar3();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>
<%    }
%>

<%
    if (lista1.findAll().get(temp2[3]).getAthele0().equals("Asistio")) {


%>
<label type="text" id="Name_Athele3" value="<%=lista1.findAll().get(temp2[3]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[3]).getName_Athele0()%></label>

<div id="contenedor4">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas4">00</div>
    <div class="reloj" id="Minutos4">:00</div>
    <div class="reloj" id="Segundos4">:00</div>
    <div class="reloj" id="Centesimas4">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio4" value="Start &#9658;" onclick="inicio4();">
    <input type="button" class="boton" id="parar4" value="Stop &#8718;" onclick="parar4();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>
<%    }
%>

<%
    if (lista1.findAll().get(temp2[4]).getAthele0().equals("Asistio")) {


%>
<label type="text" id="Name_Athele4" value="<%=lista1.findAll().get(temp2[4]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[4]).getName_Athele0()%></label>


<div id="contenedor5">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas5">00</div>
    <div class="reloj" id="Minutos5">:00</div>
    <div class="reloj" id="Segundos5">:00</div>
    <div class="reloj" id="Centesimas5">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio5" value="Start &#9658;" onclick="inicio5();">
    <input type="button" class="boton" id="parar5" value="Stop &#8718;" onclick="parar5();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>
<%    }
%>


<%
    if (lista1.findAll().get(temp2[5]).getAthele0().equals("Asistio")) {


%>

<label type="text" id="Name_Athele5" value="<%=lista1.findAll().get(temp2[5]).getName_Athele0()%>"><%=lista1.findAll().get(temp2[5]).getName_Athele0()%></label>

<div id="contenedor6">

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <div class="reloj" id="Horas6">00</div>
    <div class="reloj" id="Minutos6">:00</div>
    <div class="reloj" id="Segundos6">:00</div>
    <div class="reloj" id="Centesimas6">:00</div>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <input type="button" class="boton" id="inicio6" value="Start &#9658;" onclick="inicio6();">
    <input type="button" class="boton" id="parar6" value="Stop &#8718;" onclick="parar6();" disabled>

    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>
    <p>&nbsp;</p>

</div>
<%    }
%>



<div id="login">


    <ul>
        <li>
            <input id="finalizar" type="submit" value="Finalizar" />
        </li>
    </ul>

</div>



