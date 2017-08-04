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
        <style>
            .search_box
            {
                float:left;
                left:10px;

            }
            .select_algo
            {
                float:right;
                right:10px;

            }
        </style>
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
                                <form action="search.jsp" method="post">
                                    <div style="margin-bottom:10px; float:left;left:0px;">
                                        Select Decryption Algorithm <select name="selected_algo"><option value="AES">AES</option><option value="DES">DES</option></select><br/>
                                    </div>
                                    <div style=" margin-bottom:10px; float:right; right: 0px;" id="search_box">
                                        <input type="text" name="search" size="10" id="searchfield" title="searchfield" onfocus="clearText(this)" onblur="clearText(this)" />
                                        <input type="submit" name="Search" id="searchbutton" title="Search" placeholder="serach data" required=""/>
                                        <input type="hidden" name="email" value="<%=email%>">
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </body>
</html>
