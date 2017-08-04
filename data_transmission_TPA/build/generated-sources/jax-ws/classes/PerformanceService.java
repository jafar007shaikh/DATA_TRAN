
package classes;

import javax.jws.WebMethod;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.bind.annotation.XmlSeeAlso;
import javax.xml.ws.Action;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.2.6-1b01 
 * Generated source version: 2.2
 * 
 */
@WebService(name = "performanceService", targetNamespace = "http://Classes/")
@XmlSeeAlso({
    ObjectFactory.class
})
public interface PerformanceService {


    /**
     * 
     * @return
     *     returns java.lang.String
     */
    @WebMethod
    @WebResult(targetNamespace = "")
    @RequestWrapper(localName = "getPerformance", targetNamespace = "http://Classes/", className = "classes.GetPerformance")
    @ResponseWrapper(localName = "getPerformanceResponse", targetNamespace = "http://Classes/", className = "classes.GetPerformanceResponse")
    @Action(input = "http://Classes/performanceService/getPerformanceRequest", output = "http://Classes/performanceService/getPerformanceResponse")
    public String getPerformance();

}
