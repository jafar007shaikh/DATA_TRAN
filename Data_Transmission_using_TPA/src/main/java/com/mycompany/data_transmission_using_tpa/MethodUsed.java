/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.data_transmission_using_tpa;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 *
 * @author
 */
public class MethodUsed {

    /**
     * method: creates connection to primary server
     *
     * @return
     */
    public static Connection getconnect() {
        Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql:/127.11.65.130:3306/datatransmission3", "adminV7IemXu", "lQphdaj6MQ__");//three

        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return con;
    }

    /**
     * method:returns 1 if registration successful
     *
     * @param name
     * @param emailId
     * @param pass
     * @param Contact
     * @param address
     * @param color
     * @param school
     * @param food
     * @return
     */
    public int SigUp(String name, String emailId, String pass, String Contact, String address, String color, String school, String food) {
        int i = 0;
        try {
            Connection con = getconnect();
            Statement st = con.createStatement();
            st.execute("INSERT INTO register(Name,Email,Pass,Contact,Address,Color,School,Food) VALUES('" + name + "','" + emailId + "','" + pass + "','" + Contact + "','" + address + "','" + color + "','" + school + "','" + food + "')");
            i = 1;
            con.close();
            System.out.println("data inserted");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return i;
    }

    /**
     * method: returns 1 if EmailId and password is valid
     *
     * @param EmailId
     * @param password
     * @return
     */
    public int Login(String EmailId, String password) {
        int j = 0;
        try {
            Connection con = getconnect();
            System.out.println("connected");
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from register where Email='" + EmailId + "' and Pass='" + password + "'");
            if (rs.next()) {
                j = 1;
                System.out.println("login success");
            } else {
                j = 0;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return j;
    }

    /**
     *
     * @param email
     * @param qid
     * @param ans
     * @return
     */
    public static int getAuthenticat(String email, String qid, String ans) {
        int i = 0;
        String ansReal = "";
//        int qidd = Integer.parseInt(qid);
//        Integer.parseInt(qid);
//        qidd = qidd + 5;
        int qidd = Integer.parseInt(qid);

        try {
            Connection con = getconnect();
            Statement st = con.createStatement();
            ResultSet rs = st.executeQuery("select * from register where Email='" + email + "'");
            if (rs.next()) {
                ansReal = rs.getString(qidd);
            }
            if (ansReal.equalsIgnoreCase(ans)) {
                i = 5;
            }

            rs.close();
            con.close();
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return i;
    }

    /**
     *
     * @param input
     * @return
     */
    public static String getMD5(String input) {
        byte[] source;
        try {
            //Get byte according by specified coding.
            source = input.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            source = input.getBytes();
        }
        String result = null;
        char hexDigits[] = {'0', '1', '2', '3', '4', '5', '6', '7',
            '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        try {
            MessageDigest md = MessageDigest.getInstance("MD5");
            md.update(source);
            //The result should be one 128 integer
            byte temp[] = md.digest();
            char str[] = new char[16 * 2];
            int k = 0;
            for (int i = 0; i < 16; i++) {
                byte byte0 = temp[i];
                str[k++] = hexDigits[byte0 >>> 4 & 0xf];
                str[k++] = hexDigits[byte0 & 0xf];
            }
            result = new String(str);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return result;
    }
}
