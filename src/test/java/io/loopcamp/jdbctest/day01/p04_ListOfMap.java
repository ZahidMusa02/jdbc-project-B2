package io.loopcamp.jdbctest.day01;

import org.junit.jupiter.api.DisplayName;
import org.junit.jupiter.api.Test;

import java.sql.*;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class p04_ListOfMap {
    //right now, these are instance variables because they are directly in the class declaration.
    String dbUrl = "jdbc:oracle:thin:@54.224.70.64:1521:XE";
    String dbUsername = "hr";
    String dbPassword = "hr";


    @Test
    public void test() {
        Map <String, Object> row1MapExpected = new HashMap<>();
        row1MapExpected.put("FIRST_NAME", "Steven");                 // KEY=FIRST_NAME       VALUE=Steven
        row1MapExpected.put("LAST_NAME", "King");                    // KEY=LAST_NAME        VALUE=King
        row1MapExpected.put("SALARY", 24000);                        // KEY=SALARY           VALUE=24000
        System.out.println(row1MapExpected);


        Map <String, Object> row2MapExpected = new HashMap<>();
        row2MapExpected.put("FIRST_NAME", "Neena");                  // KEY=FIRST_NAME       VALUE=Neena
        row2MapExpected.put("LAST_NAME", "Yang");                    // KEY=LAST_NAME        VALUE=Yang
        row2MapExpected.put("SALARY", 17000);                        // KEY=SALARY           VALUE=24000
        System.out.println(row2MapExpected);

        // After making Maps to store our data, we can store all the maps into a List
        List <Map <String, Object> > expectedList = new ArrayList<>();
        expectedList.add(row1MapExpected);
        expectedList.add(row2MapExpected);

        System.out.println(expectedList);


    }


    @Test
    public void test2 () throws SQLException {

        // DriverManager is a class and has getConnection(); method which is used to create the CONNECTION
        Connection conn = DriverManager.getConnection(dbUrl, dbUsername, dbPassword);

        // We create Statement reference from Connection to execute the Query
        Statement stmnt  = conn.createStatement(ResultSet.TYPE_SCROLL_INSENSITIVE, ResultSet.CONCUR_READ_ONLY);

        //Using the stmnt reference to execute the query and store the result into rs
        ResultSet rs = stmnt.executeQuery("SELECT * FROM EMPLOYEES");

        // Will help us to work with the upper side of table meaning the columnName and columnCounts
        ResultSetMetaData rsmd = rs.getMetaData();
        rs.next();


        Map <String, Object> row1MapActual = new HashMap<>();
        // first name, last name, salary
        row1MapActual.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)) );
        // row1MapActual.put(rsmd.getColumnName(2), rs.getString(2) );  // Instead, the column name (dynamically), you can also use the index number of column
        row1MapActual.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)) );
        row1MapActual.put(rsmd.getColumnName(8), rs.getString("SALARY") ); // Instead using the index number of column, we can use the column name (hard coded)
        System.out.println(row1MapActual);



        rs.next();
        Map <String, Object> row2MapActual = new HashMap<>();
        // first name, last name, salary
        row2MapActual.put(rsmd.getColumnName(2), rs.getString(rsmd.getColumnName(2)) ); // rs.getString("FIRST_NAME"); --- > FIRST_NAME -- > rsmd.getColumnName(2)
        // row2MapActual.put(rsmd.getColumnName(2), rs.getString(2) );  // Instead, the column name (dynamically), you can also use the index number of column
        row2MapActual.put(rsmd.getColumnName(3), rs.getString(rsmd.getColumnName(3)) );
        row2MapActual.put(rsmd.getColumnName(8), rs.getString("SALARY") ); // Instead using the index number of column, we can use the column name (hard coded)
        System.out.println(row2MapActual);


        // After making Maps to store our data, we can store all the maps into a List
        List <Map <String, Object> > expectedList = new ArrayList<>();
        expectedList.add(row1MapActual);
        expectedList.add(row2MapActual);

        System.out.println(expectedList);



        // Once you are done with the databe, close all your connection
        rs.close();
        stmnt.close();
        conn.close();

    }


}
