
<%@page import="classes.PerformanceService_Service"%>
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
                                        <!--<li><a href="upload.jsp">File Upload</a></li>-->
                                        <li><a href="performance.jsp">Check Performance</a> </li>
                                        <li><a href="search_download.jsp" class="selected">File Download</a></li>
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
                                <%
                                    classes.PerformanceService_Service client1 = new PerformanceService_Service();
                                    classes.PerformanceService port1 = client1.getPerformanceServicePort();
                                    String performance = port1.getPerformance();
                                    String[] per = performance.split("\t");
                                %>
                                <table style="margin-left: 430px;height: 100px;width: 450px; margin-top: 25px" >

                                    <tr><td ><img src="images/Formato 5.png" height="150" width="300" align="center"> <br><br><br><br> </td></tr>
                                    <tr>
                                        <td>Precision:</td>
                                        <td><%=per[0]%> <br><br></td>
                                    <tr>
                                        <td>Recall:</td>
                                        <td><%=per[1]%>  <br><br></td>
                                    </tr>
                                    <tr>
                                        <td>F-Measure:</td>
                                        <td><%=per[2]%> <br><br></td>
                                    </tr>
                                    <tr>
                                        <td>Memory Uses:</td>
                                        <td><%=per[3]%>KB <br><br></td>
                                    </tr>
                                    <tr>
                                        <td>Response Time:</td>
                                        <td><%=per[4]%>MS <br><br></td>
                                    </tr>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
