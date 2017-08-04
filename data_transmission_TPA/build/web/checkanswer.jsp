<%-- 
    Document   : checkanswer
    Created on : 8 Aug, 2016, 6:15:02 PM
    Author     : mukesh
--%>

<%@page import="com.mycompany.data_transmission_using_tpa.QuestionCheck_Service"%>
<%--<%@page import="com.mycompany.fileserverclaud.AuthenticatService_Service"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String ans = request.getParameter("ans");
            String Qids = (String) session.getAttribute("Qid");
            int a  = Integer.parseInt(Qids)+6;
            String Qid=String.valueOf(a);
            String loginid = (String) session.getAttribute("loginid");
            com.mycompany.data_transmission_using_tpa.QuestionCheck_Service client =  new QuestionCheck_Service();
            com.mycompany.data_transmission_using_tpa.QuestionCheck port =  client.getQuestionCheckPort();
            int answer = port.authenticateService(loginid, Qid, ans);
            if (answer == 5) {
                response.sendRedirect("login_success.jsp");
            } else {
                out.print("<script LANGUAGE='javascript'> alert('Wrong Answer ');document.location='" + "login.jsp" + "';</script>");
            }
        %>
 
    </body>
</html>
