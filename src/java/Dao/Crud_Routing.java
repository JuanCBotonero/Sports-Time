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
