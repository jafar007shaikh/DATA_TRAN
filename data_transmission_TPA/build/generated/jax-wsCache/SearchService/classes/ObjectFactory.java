
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

    private final static QName _GetSearchService_QNAME = new QName("http://Classes/", "getSearchService");
    private final static QName _GetSearchServiceResponse_QNAME = new QName("http://Classes/", "getSearchServiceResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: classes
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetSearchServiceResponse }
     * 
     */
    public GetSearchServiceResponse createGetSearchServiceResponse() {
        return new GetSearchServiceResponse();
    }

    /**
     * Create an instance of {@link GetSearchService }
     * 
     */
    public GetSearchService createGetSearchService() {
        return new GetSearchService();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetSearchService }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getSearchService")
    public JAXBElement<GetSearchService> createGetSearchService(GetSearchService value) {
        return new JAXBElement<GetSearchService>(_GetSearchService_QNAME, GetSearchService.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetSearchServiceResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getSearchServiceResponse")
    public JAXBElement<GetSearchServiceResponse> createGetSearchServiceResponse(GetSearchServiceResponse value) {
        return new JAXBElement<GetSearchServiceResponse>(_GetSearchServiceResponse_QNAME, GetSearchServiceResponse.class, null, value);
    }

}
