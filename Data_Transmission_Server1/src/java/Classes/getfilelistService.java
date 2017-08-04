/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.util.ArrayList;
import javax.jws.WebService;
import javax.jws.WebMethod;
import javax.jws.WebParam;

/**
 *
 * @author System Web
 */
@WebService(serviceName = "getfilelistService")
public class getfilelistService {

    /**
     * Web service operation
     * @param emailid
     * @param Algo
     * @return 
     */
    @WebMethod(operationName = "getfilelist")
    public ArrayList<String> getfilelist(@WebParam(name = "emailid") String emailid,@WebParam(name = "Algo") String Algo) {
        //TODO write your implementation code here:
        return Methods.getfiles(emailid,Algo);
    }

    /**
     * This is a sample web service operation
     */
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }
  
    
}
