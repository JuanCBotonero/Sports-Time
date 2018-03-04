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

            var Cantidad = $('#Cantidad').val();
            var Distancia = $('#Distancia').val();
            var Style = $('#Style').val();
            var Athele0 = cronometro1();
            var Athele1 = cronometro2();
            var Athele2 = cronometro3();
            var Athele3 = cronometro4();
            var Athele4 = cronometro5();
            var Athele5 = cronometro6();
            alert(Athele1);

            $.ajax({
                url: "Espalda_Servlet",
                data: {Cantidad: Cantidad, Distancia: Distancia, Style: Style, Athele0: Athele0, Athele1: Athele1, Athele2: Athele2, Athele3: Athele3, Athele4: Athele4, Athele5: Athele5},
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
        <li>
            <input id="Style" type="text" placeholder="Style" />
        </li>
    </ul>

</div>


<%
    Crud_List lista1 = new Crud_List();
    Crud_Athele athele = new Crud_Athele();
    Crud_Coach crr = new Crud_Coach();

    int[] temp2 = new int[6];
    int y = 0;

    HttpSession misession1 = request.getSession(true);
    String h = String.valueOf(misession1.getAttribute("Role"));

    HttpSession misession2 = request.getSession(true);
    String h1 = String.valueOf(misession2.getAttribute("v"));
    int identifiquer = Integer.parseInt(h1);

    Date date = new Date();
    DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd");
    System.out.println("Hora y fecha: " + hourdateFormat.format(date));
    String fecha_y_hora = hourdateFormat.format(date);

    for (int i = 0; i < lista1.findAll().size(); i++) {

        if (lista1.findAll().get(i).getDate().equals(fecha_y_hora) || lista1.findAll().get(i).getCoach_Name().equals(crr.findAll().get(identifiquer).getName() + " " + crr.findAll().get(identifiquer).getLastname()) || lista1.findAll().get(i).getJornada().equals(h)) {
            temp2[y] = i;
            y++;
        }

    }

    if (lista1.findAll().get(temp2[0]).getAthele0().equals("Asistio")) {

        out.println("<h1> " + lista1.findAll().get(temp2[0]).getName_Athele0() + "</h1>");


%>


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

        out.println("<h1> " + lista1.findAll().get(temp2[1]).getName_Athele0() + "</h1>");

%>

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

        out.println("<h1> " + lista1.findAll().get(temp2[2]).getName_Athele0() + "</h1>");

%>

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

        out.println("<h1> " + lista1.findAll().get(temp2[3]).getName_Athele0() + "</h1>");
%>

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

        out.println("<h1> " + lista1.findAll().get(temp2[4]).getName_Athele0() + "</h1>");

%>

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

        out.println("<h1> " + lista1.findAll().get(temp2[5]).getName_Athele0() + "</h1>");

%>
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



