<%@page import="java.util.Random"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>security que</title>
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
            Random rnd = new Random();
            int QNo = rnd.nextInt(3);
            String[] str = new String[3];
            String email = request.getParameter("userid");
            str[0] = " What is your favorite color?";
            str[1] = " What is your first school?";
            str[2] = " What is your favorite food?";
            String randomQuestion = str[QNo];
            session.setAttribute("Qid", "" + QNo);
//            session.setAttribute("loginid", email);
            System.out.println(randomQuestion);
            System.out.println(QNo);
        %>

        <div id="wrapper">
            <div id="header-wrapper">
                <header id="header">
                    <div class="5grid-layout">
                        <div class="row">
                            <div class="12u" id="logo">
                                <!-- Logo -->
                                <h1><a href="#" class="mobileUI-site-name">A secure data transmission among the cloud host and client using the third party trust auditor</a></h1>
                                <!--<p>Free Responsive Template</p>-->
                            </div>
                        </div>
                    </div>
                    <div class="5grid-layout">
                        <div class="row">
                            <div class="12u" id="menu">
                                <nav class="mobileUI-site-nav">
                                    <ul>
                                        <li class="current_page_item"><a href="index.html">Home</a></li>
                                        <li><a href="login.jsp">Login</a></li>
                                        <li><a href="registration.jsp">Registration</a></li>
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
                                <form action="checkanswer.jsp" >
                                    <center>
                                        <table border="0" cellspacing="15" cellpadding="5">
                                            <tr> <td colspan="2"> <img src="images/oth.jpg" alt="Image not found" height="150" width="400"><br><br></td></tr>
                                            <tr>
                                                <td><h3><%=randomQuestion%>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</h3></td>
                                                <td><input placeholder="Enter Your Answer" type="text" required="" name="ans"><br><br></td>
                                            </tr>
                                            <tr>
                                                <td colspan="2">
                                            <center> <input type="submit" value="Authentication"></center>
                                                </td>
                                            </tr> 
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
