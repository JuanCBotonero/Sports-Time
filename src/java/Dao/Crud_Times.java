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
