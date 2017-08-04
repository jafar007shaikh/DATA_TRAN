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
@WebService(serviceName = "SearchService")
public class SearchService {
    /**
     * Web service operation
     * @param Emailid
     * @param Data
     * @param Algo
     * @return 
     */
    @WebMethod(operationName = "getSearchService")
    public String getSearchService(@WebParam(name = "Emailid") String Emailid, @WebParam(name = "Data") String Data, @WebParam(name = "Algo") String Algo) {
        //TODO write your implementation code here:
        return searching.search(Emailid, Data, Algo);
    }
}
