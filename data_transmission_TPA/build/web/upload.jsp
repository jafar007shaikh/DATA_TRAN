<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.io.File"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
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
    <body> 
        <%
            String email = (String) session.getAttribute("loginid");
            session.setAttribute("Algo", "AES");
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
                                        <li><a href="upload1.jsp" class="selected" >File Upload Using DES</a> </li>
                                        <li><a href="search_download.jsp">File Download</a></li>
                                        <li><a href="logout.jsp">logout</a></li>
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
                                <form action="http://localhost:8084/Data_Transmission_Server1/upload" method="post" enctype="multipart/form-data">
                                    <center>
                                        <table>
                                            <tr><td colspan="2"><img src="images/upload.jpg" width="300" height="150" alt="" border="0"></td></tr>
                                            <tr><td><a href="key_generate.jsp">Request for the key</a></td><td> <Input type="text" name="key" value="<%=session.getAttribute("key")%>"> </td></tr>
                                            <tr><td><br>Choose a File to upload</td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<td><br><input type="file" name="file" ></td></tr>
                                            <tr><td><br><br><input type="hidden"  name="email" value="<%=email%>"></td></tr>
                                            <tr><td colspan="2"><center><input type="submit" name="upload" value="upload" ></center></td></tr>
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
