
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

    private final static QName _GetfilelistResponse_QNAME = new QName("http://Classes/", "getfilelistResponse");
    private final static QName _Getfilelist_QNAME = new QName("http://Classes/", "getfilelist");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: classes
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Getfilelist }
     * 
     */
    public Getfilelist createGetfilelist() {
        return new Getfilelist();
    }

    /**
     * Create an instance of {@link GetfilelistResponse }
     * 
     */
    public GetfilelistResponse createGetfilelistResponse() {
        return new GetfilelistResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetfilelistResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getfilelistResponse")
    public JAXBElement<GetfilelistResponse> createGetfilelistResponse(GetfilelistResponse value) {
        return new JAXBElement<GetfilelistResponse>(_GetfilelistResponse_QNAME, GetfilelistResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Getfilelist }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getfilelist")
    public JAXBElement<Getfilelist> createGetfilelist(Getfilelist value) {
        return new JAXBElement<Getfilelist>(_Getfilelist_QNAME, Getfilelist.class, null, value);
    }

}
