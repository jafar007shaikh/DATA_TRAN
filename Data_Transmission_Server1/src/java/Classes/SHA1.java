/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import java.security.MessageDigest;

/**
 *
 * @author System Web
 */
public class SHA1 {

    /**
     *
     * @param base
     * @return
     */
    public static String sha256(byte[] base) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-256");
            byte[] hash = digest.digest(base);
            StringBuffer hexString = new StringBuffer();

            for (int i = 0; i < hash.length; i++) {
                String hex = Integer.toHexString(0xff & hash[i]);
                if (hex.length() == 1) {
                    hexString.append('0');
                }
                hexString.append(hex);
            }

            return hexString.toString();
        } catch (Exception ex) {
            throw new RuntimeException(ex);
        }
    }
    public static void main(String[] args) {
       byte[] b = "10000".getBytes();
        System.out.println("sha "+SHA1.sha256(b));
    }

}
