
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

    private final static QName _LoginServ_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "login_serv");
    private final static QName _LoginServResponse_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "login_servResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.mycompany.data_transmission_using_tpa
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link LoginServ }
     * 
     */
    public LoginServ createLoginServ() {
        return new LoginServ();
    }

    /**
     * Create an instance of {@link LoginServResponse }
     * 
     */
    public LoginServResponse createLoginServResponse() {
        return new LoginServResponse();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginServ }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "login_serv")
    public JAXBElement<LoginServ> createLoginServ(LoginServ value) {
        return new JAXBElement<LoginServ>(_LoginServ_QNAME, LoginServ.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link LoginServResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "login_servResponse")
    public JAXBElement<LoginServResponse> createLoginServResponse(LoginServResponse value) {
        return new JAXBElement<LoginServResponse>(_LoginServResponse_QNAME, LoginServResponse.class, null, value);
    }

}
