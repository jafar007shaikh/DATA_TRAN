
package classes;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for getSearchService complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="getSearchService">
 *   &lt;complexContent>
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType">
 *       &lt;sequence>
 *         &lt;element name="Emailid" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Data" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *         &lt;element name="Algo" type="{http://www.w3.org/2001/XMLSchema}string" minOccurs="0"/>
 *       &lt;/sequence>
 *     &lt;/restriction>
 *   &lt;/complexContent>
 * &lt;/complexType>
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "getSearchService", propOrder = {
    "emailid",
    "data",
    "algo"
})
public class GetSearchService {

    @XmlElement(name = "Emailid")
    protected String emailid;
    @XmlElement(name = "Data")
    protected String data;
    @XmlElement(name = "Algo")
    protected String algo;

    /**
     * Gets the value of the emailid property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getEmailid() {
        return emailid;
    }

    /**
     * Sets the value of the emailid property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setEmailid(String value) {
        this.emailid = value;
    }

    /**
     * Gets the value of the data property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getData() {
        return data;
    }

    /**
     * Sets the value of the data property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setData(String value) {
        this.data = value;
    }

    /**
     * Gets the value of the algo property.
     * 
     * @return
     *     possible object is
     *     {@link String }
     *     
     */
    public String getAlgo() {
        return algo;
    }

    /**
     * Sets the value of the algo property.
     * 
     * @param value
     *     allowed object is
     *     {@link String }
     *     
     */
    public void setAlgo(String value) {
        this.algo = value;
    }

}
