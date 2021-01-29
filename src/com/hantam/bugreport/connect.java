/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hantam.bugreport;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author ivana
 */
public class connect {

    static Connection conn = null;

    public static Connection connection() {
        try {
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/hantam_bugreport", "root", "");
            System.out.println("Connection success");
        } catch (Exception ex) {
            Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    }
}
