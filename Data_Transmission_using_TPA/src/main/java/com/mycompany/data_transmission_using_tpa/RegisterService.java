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
@WebService(serviceName = "RegisterService")
public class RegisterService {

    /**
     * This is a sample web service operation
     */
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }
     /**
     * Web service operation for user registration
     * @param name
     * @param EmailId
     * @param Pass
     * @param Contact
     * @param address
     * @param color
     * @param school
     * @param food
     * @return 
     */
     @WebMethod(operationName = "User_Registration")
    public int User_Registration(@WebParam(name = "name") String name, @WebParam(name = "EmailId") String EmailId, @WebParam(name = "Pass") String Pass, @WebParam(name = "Contact") String Contact, @WebParam(name = "Address") String address,@WebParam(name = "Color") String color,@WebParam(name = "School") String school,@WebParam(name = "Food") String food) {
        //code for registration process:
        MethodUsed register_obj = new MethodUsed();
        return register_obj.SigUp(name,EmailId,Pass,Contact,address,color,school,food);
    }
}
