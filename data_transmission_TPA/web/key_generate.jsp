
<%@page import="com.mycompany.data_transmission_using_tpa.KeygenerationService_Service"%>
<%@page import="java.io.File"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>secure data transmission cloud</title>
        <meta charset="utf-8">
        <noscript>
        <link rel="stylesheet" href="css/5grid/core.css">
        <link rel="stylesheet" href="css/5grid/core-desktop.css">
        <link rel="stylesheet" href="css/5grid/core-1200px.css">
        <link rel="stylesheet" href="css/5grid/core-noscript.css">
        <link rel="stylesheet" href="css/style.css">
        <link rel="stylesheet" href="css/style-desktop.css">
        </noscript>
        <script src="css/5grid/jquery.js"></script>
        <script src="css/5grid/init.js?use=mobile,desktop,1000px&amp;mobileUI=1&amp;mobileUI.theme=none"></script>
        <!--[if IE 9]><link rel="stylesheet" href="css/style-ie9.css"><![endif]-->
    </head>
     <body class="homepage">
        <%
            String email = (String) session.getAttribute("loginid");
        %>
        <div id="wrapper">
            <div id="header-wrapper">
                <header id="header">
                    <div class="5grid-layout">
                        <div class="row">
                            <div class="12u" id="logo">
                                <!-- Logo -->
                                <h1><a href="#" class="mobileUI-site-name">A secure data transmission among the cloud host and client using the third party trust auditor</a></h1>
                                <p><%=email%></p>
                            </div>
                        </div>
                    </div>
                    <div class="5grid-layout">
                        <div class="row">
                            <div class="12u" id="menu">
                                <nav class="mobileUI-site-nav">
                                    <ul>
                                        <li><a href="login_success.jsp">Home</a></li>
                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>
                </header>
                <div class="5grid-layout">
                    <div class="row">
                        <div id="banner" class="12u">
                            <div class="container"> 
                                <% String userid = (String) session.getAttribute("loginid");%>
                                <form action="upload.jsp" method="post">
                                    <center>
                                        <table>
                                            <tr><td colspan="2"> <img src="images//secretkey.gif" alt="Image not found" height="150" width="400"> </td></tr>
                                            <tr><td>  User Id </td><td>  <input name="useid" type="text" value="<%=userid%>"></td></tr>
                                                    <%
                                                        com.mycompany.data_transmission_using_tpa.KeygenerationService_Service client = new KeygenerationService_Service();
                                                        com.mycompany.data_transmission_using_tpa.KeygenerationService port = client.getKeygenerationServicePort();
                                                        String keyy = port.getkey(userid);
                                                    %>
                                            <tr><td>  Key </td><td><Input type="text" name="key" value="<%=keyy%>"></td></tr>
                                            <tr><td colspan="2"> <center><input type="submit" value="send key"></center></td></tr>
                                                <%session.setAttribute("key", keyy);%>
                                        </table>
                                    </center>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
