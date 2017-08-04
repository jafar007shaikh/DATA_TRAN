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
@WebService(serviceName = "performanceService")
public class performanceService {

    /**
     * Web service operation
     */
    @WebMethod(operationName = "getPerformance")
    public String getPerformance() {
        //TODO write your implementation code here:
        return searching.performance;
    }

    /**
     * This is a sample web service operation
     */
//    @WebMethod(operationName = "hello")
//    public String hello(@WebParam(name = "name") String txt) {
//        return "Hello " + txt + " !";
//    }
    
    
}
