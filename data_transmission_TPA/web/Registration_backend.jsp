<%@page import="com.mycompany.data_transmission_using_tpa.RegisterService_Service"%>
<%--<%@page import="com.mycompany.murdpa_webservices.RegisterService_Service"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>SignUp Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("Name");
            String email = request.getParameter("Email");
            String Password = request.getParameter("Password");
            String Contact = request.getParameter("Contact_no");
            String Address = request.getParameter("Address");
            String color = request.getParameter("color");
            String school = request.getParameter("school");
            String food = request.getParameter("food");
            com.mycompany.data_transmission_using_tpa.RegisterService_Service client = new RegisterService_Service();
            com.mycompany.data_transmission_using_tpa.RegisterService port = client.getRegisterServicePort();
            int success = port.userRegistration(name, email, Password, Contact, Address, color, school, food);
            if (success == 1) {
                out.println("<script LANGUAGE='javascript'> alert('Regsitartion Process Complete');document.location='" + "login_success.jsp" + "';</script>");
            } else {
                out.println("<script LANGUAGE='javascript'> alert('Registration process not completed !! Try again');document.location='" + "index.html" + "';</script>");
            }
//            }
%>
    </body>
</html>
