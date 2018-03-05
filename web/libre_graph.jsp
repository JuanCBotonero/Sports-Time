<%@page import="Dao.Crud_Times"%>
<%@page import="Dao.Crud_Athele"%>
<html>
    <head>
        <title>Libre</title>
        <meta charset="UTF-8">
        <script type="text/javascript" src="js/jquery.js"></script>
        <script type="text/javascript" src="js/chartJS/Chart.min.js"></script>
    </head>

    <script>
        $(document).ready(function () {
            $('#volver').click(function (event) {
                window.location.replace("uniquegraph.jsp");

                $.ajax({
                    success: function (respuesta) {



                    }
                });
            });
        });

    </script>


    <script>
        $(document).ready(function () {
            $('#perfil').click(function (event) {
                window.location.replace("Athlete.jsp");

                $.ajax({
                    success: function (respuesta) {



                    }
                });
            });
        });

    </script>


    <style>
        .caja{
            margin: auto;
            max-width: 250px;
            padding: 20px;
            border: 1px solid #BDBDBD;
        }
        .caja select{
            width: 100%;
            font-size: 16px;
            padding: 5px;
        }
        .resultados{
            margin: auto;
            margin-top: 40px;
            width: 1000px;
        }
    </style>
    <body> 

        <div class="resultados"><canvas id="grafico"></canvas></div>
    </body>

    <h1>Libre</h1>

    <div id="login">


        <ul>
            <li>
                <input id="volver" type="submit" value="Volver" />
            </li>
            <li>
                <input id="perfil" type="submit" value="Perfil" />
            </li>


        </ul>

    </div>

    <%

        Crud_Times tu = new Crud_Times();

        String[] nombres = new String[6];
        String[] tiempos = new String[6];
        int lo = 0;

        for (int i = 0; i < tu.findAll().size(); i++) {

            if (tu.findAll().get(i).getID_Routing() == 2) {
                nombres[lo] = tu.findAll().get(i).getID_Athele();
                tiempos[lo] = tu.findAll().get(i).getTime();
                lo++;
            }

        }

        double[] posicionesespaldatiempo1 = new double[6];

        for (int i = 0; i < tiempos.length; i++) {

            String str = tiempos[i];
            String delimiter = ":";
            String[] temp;
            temp = str.split(delimiter);

            String perra = temp[1] + "." + temp[2];

            posicionesespaldatiempo1[i] = Double.parseDouble(perra);
        }


    %>




    <script>
        $(document).ready(mostrarResultados(2015));
        function mostrarResultados(año) {
            $.ajax({
                success: function (data) {
                    var Datos = {
                        labels: ['Athele1', 'Athele2', 'Athele3', 'Athele4', 'Athele5', 'Athele6'],
                        datasets: [
                            {
                                fillColor: 'rgba(91,228,146,0.6)', //COLOR DE LAS BARRAS
                                strokeColor: 'rgba(57,194,112,0.7)', //COLOR DEL BORDE DE LAS BARRAS
                                highlightFill: 'rgba(73,206,180,0.6)', //COLOR "HOVER" DE LAS BARRAS
                                highlightStroke: 'rgba(66,196,157,0.7)', //COLOR "HOVER" DEL BORDE DE LAS BARRAS
                                data: [<%=posicionesespaldatiempo1[0]%>, <%=posicionesespaldatiempo1[1]%>, <%=posicionesespaldatiempo1[2]%>,<%=posicionesespaldatiempo1[3]%>,<%=posicionesespaldatiempo1[4]%>,<%=posicionesespaldatiempo1[5]%>]
                            }
                        ]
                    }

                    var contexto = document.getElementById('grafico').getContext('2d');
                    window.Barra = new Chart(contexto).Bar(Datos, {responsive: true});
                }
            });
            return false;
        }
    </script>



</html>