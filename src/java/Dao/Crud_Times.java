/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Datos.List1;
import Datos.Times;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 *
 * @author JCBOT
 */
public class Crud_Times {

    public List<Times> findAll() throws SQLException {
        List<Times> departamentos = null;
        String query = "SELECT * FROM times";
        Connection connection = Conexion.getConnection();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);

            int ID_Time;
            int ID_Routing;
            String ID_Athele;
            String Time1;
         
           

            while (rs.next()) {
                if (departamentos == null) {
                    departamentos = new ArrayList<Times>();
                }

                Times registro = new Times();

                ID_Time = rs.getInt("ID_Time");
                registro.setID_Time(ID_Time);

                ID_Routing = rs.getInt("ID_Routing");
                registro.setID_Routing(ID_Routing);

                ID_Athele = rs.getString("ID_Athele");
                registro.setID_Athele(ID_Athele);

                Time1 = rs.getString("Time1");
                registro.setTime(Time1);

                departamentos.add(registro);
            }

            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de Departamentos");
            e.printStackTrace();
        }

        return departamentos;
    }

    public boolean insert(Times t) throws SQLException {
        boolean result = false;
        Connection connection = Conexion.getConnection();

        String query = " insert into times (ID_Time,ID_Routing,ID_Athele,Time1)" + "values (?,?,?,?)";
        PreparedStatement preparedStmt = null;

        try {

            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setInt(1, t.getID_Time());
            preparedStmt.setInt(2, t.getID_Routing());
            preparedStmt.setString(3, t.getID_Athele());
            preparedStmt.setString(4, t.getTime());

            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
