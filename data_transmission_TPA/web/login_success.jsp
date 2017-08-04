<%-- 
    Document   : login.jsp
    Created on : Jun 8, 2016, 5:56:17 PM
    Author     : System Web
--%>

<%--<%@page import="servlet.UtilityClass"%>--%>
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
                                        <li><a href="upload.jsp">File Upload Using AES</a> </li>
                                         <li><a href="upload1.jsp">File Upload Using DES</a> </li>
                                        <li><a href="search_download.jsp">File Download</a></li>
                                        <li><a href="logout.jsp">LogOut</a></li>
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
                                <h1><img src="images/login_con.jpg" width="300" height="150" alt="" border="0"/></h1><br>
                                <center>Now You Can Use All The Services</center><br>
                            </div>
                        </div>
                    </div>
                </div>
                <!--<img src="images//login_con.jpg" alt="Image not found" height="150"width="400"></center>-->
            </div>
        </div>
    </body>
</html>
