package Controlador;

import Dao.Crud_Athele;
import Dao.Crud_Routing;
import Dao.Crud_Times;
import Datos.Routing;
import Datos.Times;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Libre_Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();

        String Cantidad = request.getParameter("Cantidad");
        String Distancia = request.getParameter("Distancia");
        String Style = request.getParameter("Style");
        String Athele0 = request.getParameter("Athele0");
        String Athele1 = request.getParameter("Athele1");
        String Athele2 = request.getParameter("Athele2");
        String Athele3 = request.getParameter("Athele3");
        String Athele4 = request.getParameter("Athele4");
        String Athele5 = request.getParameter("Athele5");

        if (Athele0 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(0).getName(), Athele0);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (Athele1 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(1).getName(), Athele1);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (Athele2 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(2).getName(), Athele2);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (Athele3 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(3).getName(), Athele3);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (Athele4 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(4).getName(), Athele4);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        if (Athele5 != "0:00:00:00") {

            Crud_Athele athele = new Crud_Athele();
            Crud_Times time = new Crud_Times();
            Crud_Routing routi = new Crud_Routing();
            Times t;
            try {
                t = new Times(2, athele.findAll().get(5).getName(), Athele5);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Routing r = new Routing(Cantidad, Distancia, Style);
            try {
                routi.insert(r);
            } catch (SQLException ex) {
                Logger.getLogger(Espalda_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        }

        out.println("xxx");

    }
}
