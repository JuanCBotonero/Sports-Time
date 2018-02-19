package Controlador;

import Dao.Crud_Athele;
import Dao.Crud_Coach;
import Dao.Crud_List;
import Datos.List1;
import Datos.Register;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Attendance_Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();

        String Athele0 = request.getParameter("Athele0");
        String Athele1 = request.getParameter("Athele1");
        String Athele2 = request.getParameter("Athele2");
        String Athele3 = request.getParameter("Athele3");
        String Athele4 = request.getParameter("Athele4");
        String Athele5 = request.getParameter("Athele5");

        if (Athele0.equals("1")) {
            Athele0 = "Asistio";
        } else {
            Athele0 = "No Asistio";
        }

        if (Athele1.equals("1")) {
            Athele1 = "Asistio";
        } else {
            Athele1 = "No Asistio";
        }

        if (Athele2.equals("1")) {
            Athele2 = "Asistio";
        } else {
            Athele2 = "No Asistio";
        }

        if (Athele3.equals("1")) {
            Athele3 = "Asistio";
        } else {
            Athele3 = "No Asistio";
        }

        if (Athele4.equals("1")) {
            Athele4 = "Asistio";
        } else {
            Athele4 = "No Asistio";
        }

        if (Athele5.equals("1")) {
            Athele5 = "Asistio";
        } else {
            Athele5 = "No Asistio";
        }
        ;
        try {
            
            List1 listt = new List1(Athele0, Athele1, Athele2, Athele3, Athele4, Athele5);
            Crud_List list = new Crud_List();
            list.insert(listt);
            
        } catch (SQLException ex) {
            Logger.getLogger(Attendance_Servlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        out.println("xxx");

    }
}
