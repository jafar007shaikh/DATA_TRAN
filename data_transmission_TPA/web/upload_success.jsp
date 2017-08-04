<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
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
        <%  String time = "";
            String memory = "";
            String Algo = session.getAttribute("Algo").toString();
            try {
                Class.forName("com.mysql.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://127.11.243.2:3306/datatransmission1", "adminCtg8ceE", "HqnFVhtiF6Y_");//one
                Statement st = con.createStatement();
                ResultSet rs = st.executeQuery("select * from performance where Email='" + email + "' and Algo='" + Algo + "'");
                while (rs.next()) {
                    time = rs.getString("EncrTime");
                    memory = rs.getString("EncrMemory");
                }
            } catch (Exception ex) {
                request.setAttribute("message", "Problem in SQL Query " + ex);
                ex.printStackTrace();
            }
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
                                        <!--<li><a href="upload.jsp">File Upload</a> </li>-->
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
                                <center>
                                    <img src="images/uploaded.jpg" width="300" height="150" alt="" border="0"><br><h1>File successfully uploaded</h1><br/>
                                    
                                </center>
                            </div>
                            <center>  <h2 style="font-family:verdana;color:white;">Performance<br/>
                                        Time: <%=time%>
                                        <br/>
                                        Memory: <%=memory%></h2>
                            </center>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
