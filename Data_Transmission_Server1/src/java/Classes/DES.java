package Classes;

import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.SecretKeyFactory;
import javax.crypto.spec.DESKeySpec;

/**
 *
 * @author Anjali
 */
public class DES {

    /**
     * method : encrypt returns cipher text bytes
     *
     * @param key
     * @param filebyte
     * @return
     */
    public static byte[] encrypt(byte[] filebyte,String key) throws Exception {
        DESKeySpec dks = new DESKeySpec(key.getBytes());
        SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
        SecretKey desKey = skf.generateSecret(dks);
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(Cipher.ENCRYPT_MODE, desKey);
        byte[] encrypted = cipher.doFinal(filebyte);
        return encrypted;
    }

    /**
     * method : decrypt returns plain text bytes
     *
     * @param key
     * @param encrypted
     * @return
     */
    public static byte[] decrypt( byte[] encrypted,String key) throws Exception {
        DESKeySpec dks = new DESKeySpec(key.getBytes());
        SecretKeyFactory skf = SecretKeyFactory.getInstance("DES");
        SecretKey desKey = skf.generateSecret(dks);
        Cipher cipher = Cipher.getInstance("DES");
        cipher.init(Cipher.DECRYPT_MODE, desKey);
        byte[] decrypted = cipher.doFinal(encrypted);
        return decrypted;
    }

    /**
     * method : getMD5File returns md5 of input file
     *
     * @param input
     * @return
     */
//    public static String getMD5File(byte[] input) {
//        try {
//            MessageDigest md = MessageDigest.getInstance("MD5");
//            byte[] messageDigest = md.digest(input);
//            BigInteger number = new BigInteger(1, messageDigest);
//            String hashtext = number.toString(16);
//            // Now we need to zero pad it if you actually want the full 32 chars.
//            while (hashtext.length() < 32) {
//                hashtext = "0" + hashtext;
//            }
//            return hashtext;
//        } catch (NoSuchAlgorithmException e) {
//            throw new RuntimeException(e);
//        }
//    }

    /**
     * method : writefile write file
     *
     * @param output
     * @param bytes
     * @return
     */
//    public static boolean writefile(String output, byte[] bytes) {
//        boolean success = false;
//        try {
//            FileOutputStream fout = new FileOutputStream(new File(output));
//            fout.write(bytes);
//            fout.flush();
//            fout.close();
//            success = true;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return success;
//    }

    /**
     * method : writeKey write key into file
     *
     * @param output
     * @param bytes
     * @return
     */
//    public static boolean writeKey(String output, byte[] bytes) {
//        System.out.println(""+output);
//        boolean success = false;
//        try {
//            FileOutputStream fout = new FileOutputStream(new File(output));
//            fout.write(bytes);
//            fout.flush();
//            fout.close();
//            success = true;
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return success;
//    }

    /**
     * @param Email
     * @param file
     * @return true if datail save in database
     */
//    public static boolean Savedetail(String Email, String file) {
//        boolean succes = false;
//        try {
//            Connection con = Connect.getConnect();
//            Statement st = con.createStatement();
//            st.executeUpdate("insert into file_detail(Email, File) values('" + Email + "','" + file + "')");
//            succes = true;
//            con.close();
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return succes;
//    }

    /**
     * Users uploaded files
     *
     * @param Email
     * @returns list
     */
//    public ArrayList<String> getfiles(String Email) {
//        ArrayList<String> fileList = new ArrayList<>();
//        try {
//            Connection con = Connect.getConnect();
//            Statement st = con.createStatement();
//            String str1 = "select File from file_detail where Email='" + Email + "'";
//            ResultSet rs = st.executeQuery(str1);
//            while (rs.next()) {
//                if (!fileList.contains(rs.getString(1))) {
//                    fileList.add(rs.getString(1));
//                }
//            }
//            con.close();
//        } catch (Exception ex) {
//            ex.printStackTrace();
//        }
//        return fileList;
//    }
}
