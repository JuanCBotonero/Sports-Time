/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Datos.List1;
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
public class Crud_List {

    public List<List1> findAll() throws SQLException {
        List<List1> departamentos = null;
        String query = "SELECT * FROM asistance";
        Connection connection = Conexion.getConnection();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);

            String Fecha = null;
            String Athele0 = null;
            String Athele1 = null;
            String Athele2 = null;
            String Athele3 = null;
            String Athele4 = null;
            String Athele5 = null;

            while (rs.next()) {
                if (departamentos == null) {
                    departamentos = new ArrayList<List1>();
                }

                List1 registro = new List1();

                Fecha = rs.getString("Date1");
                registro.setFecha(Fecha);

                Athele0 = rs.getString("Athele0");
                registro.setAthele0(Athele0);

                Athele1 = rs.getString("Athele1");
                registro.setAthele1(Athele1);

                Athele2 = rs.getString("Athele2");
                registro.setAthele2(Athele2);

                Athele3 = rs.getString("Athele3");
                registro.setAthele3(Athele3);

                Athele4 = rs.getString("Athele4");
                registro.setAthele4(Athele4);

                Athele5 = rs.getString("Athele5");
                registro.setAthele5(Athele5);

                departamentos.add(registro);
            }

            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de Departamentos");
            e.printStackTrace();
        }

        return departamentos;
    }

    public boolean insert(List1 t) throws SQLException {
        boolean result = false;
        Connection connection = Conexion.getConnection();
        String query = " insert into asistance (Date1,Athele0,Athele1,Athele2,Athele3,Athele4,Athele5)" + "values (?,?,?,?,?,?,?)";
        Date date = new Date();
        DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd");
        System.out.println("Hora y fecha: " + hourdateFormat.format(date));
        String fecha_y_hora = hourdateFormat.format(date);
        PreparedStatement preparedStmt = null;

        try {

            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setString(1, fecha_y_hora);
            preparedStmt.setString(2, t.getAthele0());
            preparedStmt.setString(3, t.getAthele1());
            preparedStmt.setString(4, t.getAthele2());
            preparedStmt.setString(5, t.getAthele3());
            preparedStmt.setString(6, t.getAthele4());
            preparedStmt.setString(7, t.getAthele5());

            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
