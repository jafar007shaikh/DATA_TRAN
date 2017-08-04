/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author System Web
 */
@WebService(serviceName = "GetFileDataService")
public class GetFileDataService {
    /**
     * This is a sample web service operation
     */
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }
     /**
     * Web service operation
     * @param emailid
     * @return 
     */
    @WebMethod(operationName = "getfile")
    public String getfile(@WebParam(name = "emailid")String emailid) {
        return  Methods.Find_file(emailid).toString();
    }
}
