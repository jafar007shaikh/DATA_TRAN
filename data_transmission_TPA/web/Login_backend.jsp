

<%@page import="com.mycompany.data_transmission_using_tpa.LoginService_Service"%>
<%--<%@page import="com.mycompany.murdpa_webservices.LoginService_Service"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <%
            String email = request.getParameter("userid");
            String Password = request.getParameter("password");
            String Remember = request.getParameter("Remember");
            com.mycompany.data_transmission_using_tpa.LoginService_Service clilent = new LoginService_Service();
            com.mycompany.data_transmission_using_tpa.LoginService port = clilent.getLoginServicePort();
            int success = port.loginServ(email, Password);
//            session.setAttribute("session", email);
            session.setAttribute("loginid", email);
            session.setAttribute("pass", Password);
            if (success == 1) {
                response.sendRedirect("Securityque.jsp");
            } else {
                out.println("<script LANGUAGE='javascript'> alert('Login Failed !! Try again');document.location='" + "index.html" + "';</script>");
            }
        %>
    </body>
</html>
