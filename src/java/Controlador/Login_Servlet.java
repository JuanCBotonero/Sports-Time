package Controlador;

import Dao.Crud_Athele;
import Dao.Crud_Coach;
import Datos.Register;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Login_Servlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html; charset=iso-8859-1");
        PrintWriter out = response.getWriter();

        String temp = request.getParameter("Temp");
        HttpSession misession = request.getSession(true);

        if (temp.equals("1")) {       //Log in

            Crud_Coach crr = new Crud_Coach();
            Crud_Athele crr2 = new Crud_Athele();
            
           

            try {

                String UserName = request.getParameter("username1");
                String Password = request.getParameter("password");
                for (int i = 0; i < crr.findAll().size(); i++) {

                    if (Password.equals(crr.findAll().get(i).getPassword())) {
                        Register reg = new Register();
                        reg.setTemp(i);
                        misession.setAttribute("usuario", "Entrenador");
                        misession.setAttribute("v", i);
                        out.println("Entrenador");

                    }

                }

                for (int i = 0; i < crr2.findAll().size(); i++) {

                    if (Password.equals(crr2.findAll().get(i).getPassword())) {
                        Register reg = new Register();
                        reg.setTemp(i);
                        misession.setAttribute("usuario", "Deportista");
                        out.println("Deportista");

                    }

                }

            } catch (SQLException ex) {
                Logger.getLogger(Login_Servlet.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if (temp.equals("2")) {  //Register

            String Name = request.getParameter("Name");
            String Lastname = request.getParameter("Lastname");
            String Password = request.getParameter("Password");
            String Identification_Card = request.getParameter("Identification_Card");
            String Coach = request.getParameter("Coach");
            String Jornada = request.getParameter("Jornada");
            String Genre = request.getParameter("Genre");
            String Born_Date = request.getParameter("Born_Date");
            String Height = request.getParameter("Height");
            String weight = request.getParameter("weight");
            String Category = request.getParameter("Category");
            String Cellphone = request.getParameter("Cellphone");
            String Role1 = request.getParameter("Role1");
            String Role2 = request.getParameter("Role2");
            String Description = request.getParameter("Description");
            String Eps = request.getParameter("Eps");
            String Emergency_Number = request.getParameter("Emergency_Number");
            String Allergies = request.getParameter("Allergies");
            String Diseases = request.getParameter("Diseases");

            if (Role1.equals("1")) {     //coach

                try {

                    Register reg = new Register(Name, Lastname, Password, Identification_Card, Coach, Jornada, Genre, Born_Date, Height, weight, Category, Cellphone, Role1, Description, Eps, Emergency_Number, Allergies, Diseases);
                    System.out.println(Name);
                    Crud_Coach crr = new Crud_Coach();
                    crr.insert(reg);
                    out.println("Entrenador");

                } catch (SQLException ex) {
                    Logger.getLogger(Login_Servlet.class.getName()).log(Level.SEVERE, null, ex);
                }

            } else if (Role2.equals("2")) {   //athlete

                try {
                    Register reg = new Register(Name, Lastname, Password, Identification_Card, Coach, Jornada, Genre, Born_Date, Height, weight, Category, Cellphone, Role2, Description, Eps, Emergency_Number, Allergies, Diseases);
                    Crud_Athele crr2 = new Crud_Athele();
                    crr2.insert(reg);
                    out.println("Deportista");
                } catch (SQLException ex) {
                    Logger.getLogger(Login_Servlet.class.getName()).log(Level.SEVERE, null, ex);
                }

            }

        }

    }
}
