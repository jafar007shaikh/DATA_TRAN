
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

    private final static QName _AuthenticateService_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "AuthenticateService");
    private final static QName _AuthenticateServiceResponse_QNAME = new QName("http://data_transmission_using_tpa.mycompany.com/", "AuthenticateServiceResponse");

    /**
     * Create a new ObjectFactory that can be used to create new instances of schema derived classes for package: com.mycompany.data_transmission_using_tpa
     * 
     */
    public ObjectFactory() {
    }

    /**
     * Create an instance of {@link AuthenticateServiceResponse }
     * 
     */
    public AuthenticateServiceResponse createAuthenticateServiceResponse() {
        return new AuthenticateServiceResponse();
    }

    /**
     * Create an instance of {@link AuthenticateService }
     * 
     */
    public AuthenticateService createAuthenticateService() {
        return new AuthenticateService();
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AuthenticateService }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "AuthenticateService")
    public JAXBElement<AuthenticateService> createAuthenticateService(AuthenticateService value) {
        return new JAXBElement<AuthenticateService>(_AuthenticateService_QNAME, AuthenticateService.class, null, value);
    }

    /**
     * Create an instance of {@link JAXBElement }{@code <}{@link AuthenticateServiceResponse }{@code >}}
     * 
     */
    @XmlElementDecl(namespace = "http://data_transmission_using_tpa.mycompany.com/", name = "AuthenticateServiceResponse")
    public JAXBElement<AuthenticateServiceResponse> createAuthenticateServiceResponse(AuthenticateServiceResponse value) {
        return new JAXBElement<AuthenticateServiceResponse>(_AuthenticateServiceResponse_QNAME, AuthenticateServiceResponse.class, null, value);
    }

}
