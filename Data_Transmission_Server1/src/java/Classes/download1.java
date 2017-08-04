package Classes;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author System Web
 */
@WebServlet(name = "/download1", urlPatterns = {"/download1"})
public class download1 extends HttpServlet {

    String UPLOAD_DIRECTORY;

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
//        try (PrintWriter out = response.getWriter()) {
            try {
                HttpSession session = request.getSession();
                String fname = (String) session.getAttribute("fname");
                String filePath;
//                UPLOAD_DIRECTORY = getServletContext().getRealPath("");
//                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
//                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
//                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
                UPLOAD_DIRECTORY = System.getenv("$OPENSHIFT_DATA_DIR");
               
                filePath = UPLOAD_DIRECTORY + File.separator + "Decrypt";
                // String f1 = request.getParameter("fname");
                File downloadFile = new File(filePath + File.separator + fname);
                FileInputStream inStream = new FileInputStream(downloadFile);
                ServletContext context = getServletContext();
                String mimeType = context.getMimeType(filePath);
                if (mimeType == null) {
                    // set to binary type if MIME mapping not found
                    mimeType = "application/octet-stream";
                }
                System.out.println("MIME type: " + mimeType);
                response.setContentType(mimeType);
                response.setContentLength((int) downloadFile.length());
                String headerKey = "Content-Disposition";
                String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
                response.setHeader(headerKey, headerValue);
                OutputStream outStream = response.getOutputStream();

                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = inStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }

                inStream.close();
                outStream.close();

                response.sendRedirect("/download_success.jsp");
//        request.getRequestDispatcher("/download_success.jsp").forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }

//        }
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
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
 try {
                HttpSession session = request.getSession();
                String fname = (String) session.getAttribute("fname");
                String filePath;
                UPLOAD_DIRECTORY = getServletContext().getRealPath("");
                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
                UPLOAD_DIRECTORY = UPLOAD_DIRECTORY.substring(0, UPLOAD_DIRECTORY.lastIndexOf(File.separator));
                filePath = UPLOAD_DIRECTORY + File.separator + "Decrypt";
                // String f1 = request.getParameter("fname");
                File downloadFile = new File(filePath + File.separator + fname);
                FileInputStream inStream = new FileInputStream(downloadFile);
                ServletContext context = getServletContext();
                String mimeType = context.getMimeType(filePath);
                if (mimeType == null) {
                    // set to binary type if MIME mapping not found
                    mimeType = "application/octet-stream";
                }
                System.out.println("MIME type: " + mimeType);
                response.setContentType(mimeType);
                response.setContentLength((int) downloadFile.length());
                String headerKey = "Content-Disposition";
                String headerValue = String.format("attachment; filename=\"%s\"", downloadFile.getName());
                response.setHeader(headerKey, headerValue);
                OutputStream outStream = response.getOutputStream();

                byte[] buffer = new byte[4096];
                int bytesRead = -1;

                while ((bytesRead = inStream.read(buffer)) != -1) {
                    outStream.write(buffer, 0, bytesRead);
                }

                inStream.close();
                outStream.close();

                response.sendRedirect("/download_success.jsp");
//        request.getRequestDispatcher("/download_success.jsp").forward(request, response);
            } catch (Exception ex) {
                ex.printStackTrace();
            }
    }

}
