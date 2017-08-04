
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

    private final static QName _Getfile_QNAME = new QName("http://Classes/", "getfile");
    private final static QName _GetfileResponse_QNAME = new QName("http://Classes/", "getfileResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: classes
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link GetfileResponse }
     * 
     */
    public GetfileResponse createGetfileResponse() {
        return new GetfileResponse();
    }

    /**
     * Create an instance of {@link Getfile }
     * 
     */
    public Getfile createGetfile() {
        return new Getfile();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Getfile }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getfile")
    public JAXBElement<Getfile> createGetfile(Getfile value) {
        return new JAXBElement<Getfile>(_Getfile_QNAME, Getfile.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetfileResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://Classes/", name = "getfileResponse")
    public JAXBElement<GetfileResponse> createGetfileResponse(GetfileResponse value) {
        return new JAXBElement<GetfileResponse>(_GetfileResponse_QNAME, GetfileResponse.class, null, value);
    }

}
