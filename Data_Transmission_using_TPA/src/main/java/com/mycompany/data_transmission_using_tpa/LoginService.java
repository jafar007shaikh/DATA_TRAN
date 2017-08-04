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
@WebService(serviceName = "LoginService")
public class LoginService {

    /**
     * This is a sample web service operation
     */
    
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }
    
     /**
     * Web service operation for login process
     */
     @WebMethod(operationName = "login_serv")
    public int login_serv(@WebParam(name = "EmailId") String EmailId, @WebParam(name = "Pass") String Pass) {
        //login process:
        MethodUsed loginobj = new MethodUsed();
        return loginobj.Login(EmailId, Pass);
    }
}
