/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import javax.servlet.http.HttpServlet;
import java.security.*;
import java.util.Arrays;
import javax.crypto.*;
import javax.crypto.spec.SecretKeySpec;
import sun.misc.*;

/**
 *
 * @author System Web
 */
public class AES extends HttpServlet {

    private static final String ALGO = "AES";
//    private static final byte[] keyValue = 
//        new byte[] { 'T', 'h', 'e', 'B', 'e', 's', 't','S', 'e', 'c', 'r','e', 't', 'K', 'e', 'y' };
/**
 * 
 * @param Data
 * @param keyy
 * @return
 * @throws Exception 
 */
    public static byte[] encrypt(byte[] Data, String keyy) throws Exception {
        keyy = keyy.substring(0,16);
        Key key = generateKey(keyy);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.ENCRYPT_MODE, key);
        byte[] encVal = c.doFinal(Data);
//        String encryptedValue;
//        encryptedValue = new BASE64Encoder().encode(encVal);
        return encVal;
    }
/**
 * 
 * @param data
 * @param keyy
 * @return
 * @throws Exception 
 */
    public static byte[] decrypt(byte[] data, String keyy) throws Exception {
        keyy = keyy.substring(0,16);
        Key key = generateKey(keyy);
        Cipher c = Cipher.getInstance(ALGO);
        c.init(Cipher.DECRYPT_MODE, key);
//        byte[] decordedValue = new BASE64Decoder().decodeBuffer(encryptedData);
        byte[] decValue = c.doFinal(data);
//        String decryptedValue = new String(decValue);
        return decValue;
    }
/**
 * 
 * @param keyy
 * @return
 * @throws Exception 
 */
    private static Key generateKey(String keyy) throws Exception {
        Key key = new SecretKeySpec(keyy.getBytes(), ALGO);
        return key;
    }
  
    public static void main(String[] args) throws Exception {
        String key = "1000";
        key = MD5.getMD5(key);
        System.out.println("" + key.length());
        byte[] b = "10000".getBytes();
        byte[] b1 = encrypt(b, key + "hksdfgd rtttrert");
        System.out.println("encrpted=" +Arrays.toString(b1));

    }
}
