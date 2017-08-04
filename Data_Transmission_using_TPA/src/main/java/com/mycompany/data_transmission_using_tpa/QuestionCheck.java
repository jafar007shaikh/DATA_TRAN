/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.mycompany.data_transmission_using_tpa;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author System Web
 */
@WebService(serviceName = "QuestionCheck")
public class QuestionCheck {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "AuthenticateService")
    public int AuthenticateService(@WebParam(name = "Email") String Email, @WebParam(name = "Qid") String Qid, @WebParam(name = "Ans") String Ans) {
        //TODO write your implementation code here:
        return MethodUsed.getAuthenticat(Email, Qid, Ans);
    }

    /**
     * This is a sample web service operation
     */
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }

    /**
     * Web service operation
     */
//    @WebMethod(operationName = "Question1")
//    public int Question1(@WebParam(name = "question1") String question, @WebParam(name = "randmques") int randmques) {
//        Connection con = null;
//        int i = 0;
//        try {
//
//            con = MethodUsed.getconnect();
//            System.out.println("contectedddddd");
//            Statement st = con.createStatement();
//            ResultSet rs = null;
//            if (randmques == 1) {
//                rs = st.executeQuery("select * from register where color='" +question +"'");
//            }
//            if (randmques == 2) {
//                rs = st.executeQuery("select * from register where school='"+question+"'");
//            }
//            if (randmques == 3) {
//                rs = st.executeQuery("select * from register where food='"+question +"'");
//            }
//            if (rs.next()) {
//                i = 1;
//
//            } else {
//                i = 0;
//            }
//
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//
//        return i;
//
//    }
}
