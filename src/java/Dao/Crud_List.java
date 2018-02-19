/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import Datos.List1;
import Datos.Register;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/**
 *
 * @author JCBOT
 */
public class Crud_List {

    public boolean insert(List1 t) throws SQLException {
        boolean result = false;
        Connection connection = Conexion.getConnection();
        String query = " insert into asistance (Date1,Athele0,Athele1,Athele2,Athele3,Athele4,Athele5)" + "values (?,?,?,?,?,?,?)";
        Date date = new Date();
        DateFormat hourdateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
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
