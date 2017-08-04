
package classes;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the classes package. 
 * <p>An ObjectFactory allows you to programatically 
 * construct new instances of the Java representation 
 * for XML content. The Java representation of XML 
 * content can consist of schema derived interfaces 
 * and classes representing the binding of schema 
 * type definitions, element declarations and model 
 * groups.  Factory methods for each of these are 
 * provided in this class.
 * 
 */
@XmlRegistry
public class ObjectFactory {

    private final static QName _GetPerformance_QNAME = new QName("http://Classes/", "getPerformance");
    private final static QName _GetPerformanceResponse_QNAME = new QName("http://Classes/", "getPerformanceResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: classes
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetPerformanceResponse }
     * 
     */
    public GetPerformanceResponse createGetPerformanceResponse() {
        return new GetPerformanceResponse();
    }

    /**
     * Create an instance of {@link GetPerformance }
     * 
     */
    public GetPerformance createGetPerformance() {
        return new GetPerformance();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPerformance }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getPerformance")
    public JAXBElement<GetPerformance> createGetPerformance(GetPerformance value) {
        return new JAXBElement<GetPerformance>(_GetPerformance_QNAME, GetPerformance.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetPerformanceResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getPerformanceResponse")
    public JAXBElement<GetPerformanceResponse> createGetPerformanceResponse(GetPerformanceResponse value) {
        return new JAXBElement<GetPerformanceResponse>(_GetPerformanceResponse_QNAME, GetPerformanceResponse.class, null, value);
    }

}
