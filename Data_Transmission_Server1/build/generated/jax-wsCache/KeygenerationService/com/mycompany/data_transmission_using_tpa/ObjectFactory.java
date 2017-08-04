
package com.mycompany.data_transmission_using_tpa;

import javax.xml.bind.JAXBElement;
import javax.xml.bind.annotation.XmlElementDecl;
import javax.xml.bind.annotation.XmlRegistry;
import javax.xml.namespace.QName;


/**
 * This object contains factory methods for each 
 * Java content interface and Java element interface 
 * generated in the com.mycompany.data_transmission_using_tpa package. 
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

    private final static QName _GetkeyResponse_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "getkeyResponse");
    private final static QName _Getkey_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "getkey");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.mycompany.data_transmission_using_tpa
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link Getkey }
     * 
     */
    public Getkey createGetkey() {
        return new Getkey();
    }

    /**
     * Create an instance of {@link GetkeyResponse }
     * 
     */
    public GetkeyResponse createGetkeyResponse() {
        return new GetkeyResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link GetkeyResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "getkeyResponse")
    public JAXBElement<GetkeyResponse> createGetkeyResponse(GetkeyResponse value) {
        return new JAXBElement<GetkeyResponse>(_GetkeyResponse_QNAME, GetkeyResponse.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link Getkey }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "getkey")
    public JAXBElement<Getkey> createGetkey(Getkey value) {
        return new JAXBElement<Getkey>(_Getkey_QNAME, Getkey.class, null, value);
    }

}
