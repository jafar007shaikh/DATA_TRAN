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
                                        <!--<li><a href="twocolumn2.html">Two Column #2</a></li>-->
                                        <!--<li><a href="onecolumn.html">One Column</a></li>-->
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
                                <form name="myform" action="Registration_backend.jsp" method ="post" onsubmit="return validateform()">
                                    <center> 
                                        <table cellspacing="100" cellpadding="50"> 
                                            <tr><td colspan="2">   <img src="images/images.jpg" alt="Image not found" height="150" width="400"><br></td></tr><br>&nbsp;
                                            <tr>  
                                                <td> Name: </td>
                                                <td><input type="text" name="Name" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr>  
                                                <td> Email :</td>
                                                <td><input type="email" name="Email" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr>  
                                                <td> Password: </td>
                                                <td><input type="password" name="Password" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr> 
                                                <td> Contact_No: </td> 
                                                <td><input type="text" name="Contact_no" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr> 
                                                <td> Address: </td> 
                                                <td><input type="text" name="Address" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr > <td colspan="2">  Security Question : <br><br></td></tr>
                                            <tr> <td>  What is your favorite color?</td>
                                                <td><input type="text" name="color" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr>
                                                <td>  What is your first school?</td>
                                                <td><input type="text" name="school" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr> 
                                                <td>  What is your favorite food?</td>
                                                <td><input type="text" name="food" required="" size="45"><br><br></td>
                                            </tr>
                                            <tr>   
                                                <td colspan="2">
                                            <center>
                                                <input type=image src="images/reg.jpg"  value="submit"  alt="submit Button" onMouseOver="this.src = 'images/reg.jpg'">
                                                <!--<input type=image src="images/re.jpg" value="Reset" align="" name="reset" >-->
                                                <!--<input type="image" src="images/re.jpg" onclick="document.theForm.reset();return false;" />-->
                                                <!--<input type=reset src="images/re.jpg"  align="right" width="40" height="24" name="reset">-->
                                                <!--<input type="submit"   alt="Register" name="Register" > <img src="images/reg.jpg"> <input type="reset" name="Reset" value="Reset">-->
                                            </center>
                                            </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2"><a href="login.jsp"><h3> <font color="blue">Already Registered User can Login From Here......</h3></a></td>
                                            </tr>                      
                                        </table>
                                    </center>
                                </form>
                            </div>
                            <!--<div class="container"><a href="#"><img src="images/pics01.jpg" alt=""></a></div>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
