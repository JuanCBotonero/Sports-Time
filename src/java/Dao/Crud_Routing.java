/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Datos.Register;
import Datos.Routing;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author JCBOT
 */
public class Crud_Routing {

    public List<Routing> findAll() throws SQLException {
        List<Routing> departamentos = null;
        String query = "SELECT * FROM Routing";
        Connection connection = Conexion.getConnection();
        try {
            Statement st = connection.createStatement();
            ResultSet rs = st.executeQuery(query);

            int Number = 0;
            String Quantity = null;
            String Distance = null;
            String Style = null;

            while (rs.next()) {
                if (departamentos == null) {
                    departamentos = new ArrayList<Routing>();
                }

                Routing registro = new Routing();

                Number = rs.getInt("Number");
                registro.setNumber(Number);

                Quantity = rs.getString("Quantity");
                registro.setQuantity(Quantity);

                Distance = rs.getString("Distance");
                registro.setDistance(Distance);

                Style = rs.getString("Style");
                registro.setStyle(Style);

                departamentos.add(registro);
            }

            st.close();

        } catch (SQLException e) {
            System.out.println("Problemas al obtener la lista de Departamentos");
            e.printStackTrace();
        }

        return departamentos;
    }

    public boolean insert(Routing t) throws SQLException {
        boolean result = false;
        Connection connection = Conexion.getConnection();

        String query = " insert into Routing (Quantity,Distance,Style)" + "values (?,?,?)";
        PreparedStatement preparedStmt = null;

        try {
            preparedStmt = connection.prepareStatement(query);
            preparedStmt.setString(1, t.getQuantity());
            preparedStmt.setString(2, t.getDistance());
            preparedStmt.setString(3, t.getStyle());

            result = preparedStmt.execute();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return result;
    }

}
