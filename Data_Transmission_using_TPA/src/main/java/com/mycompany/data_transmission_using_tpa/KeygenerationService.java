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
@WebService(serviceName = "KeygenerationService")
public class KeygenerationService {

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
    @WebMethod(operationName = "getkey")
    public String getkey(@WebParam(name = "Emailid") String Emailid) {
        //TODO write your implementation code here:
         String keyy = MethodUsed.getMD5(Emailid);
        return keyy;
    }
}
