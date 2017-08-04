<%-- 
    Document   : login.jsp
    Created on : Jun 8, 2016, 5:56:17 PM
    Author     : System Web
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>secure data transmission cloud</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />

<script language="javascript" type="text/javascript">
function clearText(field){

    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;

}
</script>

<link rel="stylesheet" type="text/css" href="css/ddsmoothmenu.css" />

<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/ddsmoothmenu.js">
</script>

<script type="text/javascript">

ddsmoothmenu.init({
	mainmenuid: "templatemo_menu", //menu DIV id
	orientation: 'h', //Horizontal or vertical menu: Set to "h" or "v"
	classname: 'ddsmoothmenu', //class added to menu's outer DIV
	//customtheme: ["#1c5a80", "#18374a"],
	contentsource: "markup" //"markup" or ["container_id", "path_to_menu_file"]
})

</script>

</head>
    <body> 
        <div id="templatemo_wrapper">
	<div id="templatemo_header">
    	<div id="site_title"><h1>A secure data transmission among the cloud host and client using the third party trust auditor</h1></div>
        <div class="cleaner"></div>
    </div> <!-- end of header -->
    <div id="templatemo_menu" class="ddsmoothmenu">
        <ul>
            <li><a href="Home.jsp">Home</a></li>
            <li><a href="compare.jsp" >Check Security</a> </li>
            <li><a href="logout.jsp">logout</a>
            </li>
        </ul>
    </div>
</div>
       <center>
           <img src="images/admin_panel.jpg" alt="Image not found" height="150" width="400"><br>
        <h1>Welcome Admin</h1></center>
    </body>
</html>
