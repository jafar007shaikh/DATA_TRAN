
package com.mycompany.data_transmission_using_tpa;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for AuthenticateService complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="AuthenticateService">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Email" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Qid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Ans" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "AuthenticateService", propOrder = {
    "email",
    "qid",
    "ans"
})
public class AuthenticateService {

    @XmlElement(name = "Email")
    protected String email;
    @XmlElement(name = "Qid")
    protected String qid;
    @XmlElement(name = "Ans")
    protected String ans;

    /**
     * Gets the value of the email property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmail() {
        return email;
    }

    /**
     * Sets the value of the email property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmail(String value) {
        this.email = value;
    }

    /**
     * Gets the value of the qid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getQid() {
        return qid;
    }

    /**
     * Sets the value of the qid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setQid(String value) {
        this.qid = value;
    }

    /**
     * Gets the value of the ans property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAns() {
        return ans;
    }

    /**
     * Sets the value of the ans property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAns(String value) {
        this.ans = value;
    }

}
