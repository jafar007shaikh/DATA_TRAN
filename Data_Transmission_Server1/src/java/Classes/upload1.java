/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Classes;

import com.mycompany.data_transmission_using_tpa.KeygenerationService_Service;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.*;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
//import org.apache.catalina.startup.ExpandWar;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author System Web
 */
@WebServlet(name = "upload1", urlPatterns = {"/upload1"})
public class upload1 extends HttpServlet {

    private String UPLOAD_DIRECTORY;
    static String encrperformance1;
    String fname;
    public static int mem = 10000;

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        {
            /* TODO output your page here. You may use following sample code. */

        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, UnsupportedEncodingException {
        PrintWriter out = response.getWriter();

//        UPLOAD_DIRECTORY = getServletContext().getRealPath("");
//        UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
//        UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
//        UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
        UPLOAD_DIRECTORY = System.getenv("$OPENSHIFT_DATA_DIR");
        System.out.println("address " + UPLOAD_DIRECTORY);
        if (ServletFileUpload.isMultipartContent(request)) {
            double time = System.currentTimeMillis();
            HttpSession session = request.getSession();
            String email = "";
            String keyy = "";
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.11.243.2:3306/datatransmission1", "adminCtg8ceE", "HqnFVhtiF6Y_");
                Statement st = con.createStatement();
                String AES_key = "";
                String sha_key = "";
                DiskFileUpload upload = new DiskFileUpload();
                List items = upload.parseRequest(request);
                Iterator iter = items.iterator();
                while (iter.hasNext()) {
                    FileItem item = (FileItem) iter.next();
                    if (item.isFormField()) {
                        String names = item.getFieldName();//text1
                        String value = item.getString();
                        System.out.print(names + " ==> " + value);
                        if (names.equals("email")) {
                            email = item.getString();
                        }
                        if (names.equals("key")) {
                            keyy = item.getString();
                        }
                    }
                }
                FileItem fil = (FileItem) items.get(1);
                fname = fil.getName();
                byte filebyte[] = fil.get();
                String str = new String(filebyte);
                File fa = new File(UPLOAD_DIRECTORY + File.separator + "web" + File.separator + "FILES" + File.separator + fname);
                FileOutputStream fis = new FileOutputStream(fa);
                fis.write(filebyte);
                fis.close();
                String filepath = UPLOAD_DIRECTORY;
                boolean b = Methods.DoProcess(filepath, fname, email);
                if (!b) {
                    out.println("<script LANGUAGE='javascript'> alert('File Checking Failed Data not Saved in Database !! Try Again'); document.location='" + "FileUpload.jsp" + "';</script>");
                }
                byte[] DES_enc = DES.encrypt(filebyte, keyy);
                sha_key = SHA1.sha256(filebyte);
                File fa1 = new File(UPLOAD_DIRECTORY + File.separator + "Encrypted1" + File.separator + fname);
                FileOutputStream fis1 = new FileOutputStream(fa1);
                fis1.write(DES_enc);
                fis1.close();
                fa.delete();
                Thread.sleep(1500);
                st.execute("INSERT INTO upload_data(userid,filename,Encr_key,SHA_key,Algo)VALUES ('" + email + "','" + fname + "','" + keyy + "','" + sha_key + "','DES')");
                double encrtime = System.currentTimeMillis() - time;
                double encrmemory = (Runtime.getRuntime().totalMemory() / 1024) - (Runtime.getRuntime().freeMemory() / 1024) + mem;
                st.executeUpdate("insert into performance values('" + email + "','" + encrtime + "','" + encrmemory + "','DES','" + fname + "')");
//                encrperformance1 = encrmemory + "\t" + encrtime;
                System.out.println(" Time " + encrtime + " Memory " + encrmemory);
                String re = request.getHeader("referer");
                String re1 = re.substring(0, re.lastIndexOf("/"));
                response.sendRedirect(re1 + "/upload_success.jsp");
            } catch (Exception ex) {
                request.setAttribute("message", "File Upload Failed due to " + ex);
                ex.printStackTrace();
            }
        } else {
            request.setAttribute("message", "Sorry this Servlet only handles file upload request");
        }
    }
}
