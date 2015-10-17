<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="javax.servlet.RequestDispatcher"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<%-- <%
if(!("true".equals((String)session.getAttribute("loginsuccess")))){
	response.sendRedirect("login.jsp");
}

%> --%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="css/styleW.css">
 <link rel="stylesheet" href="css/animate.css">
 <link rel="stylesheet" type="text/css" href="css/styleg.css"> 
  <link href="css/videojs/video-js.css" rel="stylesheet" type="text/css">
    <link href="css/main.css" rel="stylesheet" type="text/css">
<title>Welcome</title>

</head>

<body style="background-image: url('bg.png');">
<div class="header"><img src="logomain.png" alt="Mountain View" style="width:100px;height:70px;"></div>
<div class="title animated bounceInUp">Welcome </div>
<div class="container">
<!-- <a href="Res.jsp" class="button1" ><input type="button" name="commit" value="Reservation"></a>
<a href="Attendence.jsp" class="button2"><input type="button" name="commit" value="Literacy"></a>
<a href="Search.jsp" class="button3"><input type="button" name="commit" value="Existing System Change"></a>
<a href="Logout.jsp" class="button4"><input type="button" name="commit" value="Logout"></a> -->
<a href="main.jsp" style="margin-left: 80%;position: relative;margin-top: 80%;" class="button4"><input type="button" name="commit" value="Proceed"></a>
</div>
<div style="margin-top: 7%;margin-left: 7%;">

<video id="myMoov" poster="data/videos/poster.jpg"  width="854" height="480" class="video-js vjs-default-skin vjs-big-play-centered vjs-controls-enabled vjs-has-started vjs-user-active" controls preload="none" data-setup='{"children": { "loadingSpinner": true, "controlBar": { "children": {"currentTimeDisplay": false, "timeDivider": false, "durationDisplay": false ,"volumeControl":false, "muteToggle":false}}}}'>
    <source src="videos/moov.mp4" type='video/mp4'/>
    <source src="videos/moov.ogv" type='video/ogg'/>
    <source src="videos/moov.webm" type='video/webm'/>
    <p class="vjs-no-js">To view this video please enable JavaScript, and consider upgrading to a web browser that <a href="http://videojs.com/html5-video-support/" target="_blank">supports HTML5 video</a></p>
</video>
</div>
<div class="footer"><p style="text-align: center;font-size:large; ;color: white;">Copyright &copy;Executioners 2015</p></div>
</body>


<script src="js/jquery-1.11.2.min.js"></script>
<script src="js/videojs/video.js"></script>
<script type="text/javascript" charset="utf-8">
    videojs.options.flash.swf = "data/js/videojs/video-js.swf";
</script>


<!-- <script type="text/javascript">
window.history.forward(1);
function noBack(){
window.history.forward();
}
</script> -->
</html>