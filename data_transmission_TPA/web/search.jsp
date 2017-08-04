<%@page import="classes.SearchService_Service"%>
<%@page import="java.io.IOException"%>
<%@page import="com.owlike.genson.TransformationException"%>
<%@page import="com.owlike.genson.Genson"%>
<%@page import="classes.GetFileDataService_Service"%>
<%--<%@page import="classes.GetfilelistService_Service"%>--%>
<%@page import="com.mycompany.data_transmission_using_tpa.KeygenerationService_Service"%>
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
                            <!--<div class="container">--> 
                                <center> 
                                    <table>
                                        <tr><td ><img src="images/search.jpg" height="150" width="300">  </td></tr>
                                        <tr><td> FileName <br> <br></td></tr>
                                                <%
                                                    try {
                                                        String algo = request.getParameter("selected_algo");
//                                                        session.setAttribute("Algo1", algo);
                                                        System.out.println("Algo1"+algo);
                                                        HashMap<String, Double> hm1 = new HashMap<>();
                                                        HashMap<String, Double> frequency = new HashMap<>();
                                                        int i = 0;
                                                        double count2 = 0;
                                                        String userid = (String) session.getAttribute("loginid");
                                                        String data = request.getParameter("search");
                                                        classes.SearchService_Service client1 = new SearchService_Service();
                                                        classes.SearchService port1 = client1.getSearchServicePort();
                                                        String filefreq = port1.getSearchService(userid, data,algo);
                                                        filefreq = filefreq.replace("{", "");
                                                        filefreq = filefreq.replace("}", "");
                                                        String[] filelist = filefreq.trim().split(",");                                                      
                                                        for (String file : filelist) {
                                                            String file1 = file.substring(0, file.indexOf("="));
                                                            String fre = file.substring(file.indexOf("=") + 1);
                                                            System.out.println("file "+file);
                                                %>
                                        <tr><td> <a href="http://localhost:8084/Data_Transmission_Server1/downloaded?<%=file1%>&<%=userid%>&<%=algo%>"><%=file1%></a></td><td><%=fre%></td></tr>
                                        <%  }
                                            } catch (Exception e) {
                                                e.printStackTrace();
                                            }
                                        %>
                                    </table> 
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
