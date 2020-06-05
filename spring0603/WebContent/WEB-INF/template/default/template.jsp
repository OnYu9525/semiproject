<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=EUC-KR" >
<title>KOSMO-30  2020. 6. 1.</title>
<link rel="stylesheet" type="text/css" href="resources/css/basic.css">
<link rel="stylesheet" href="resources/css/style.css" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


</head>
<body>
<div id="wrap">
	<tiles:insertAttribute name="header" />
	<div id="navigation">
		<tiles:insertAttribute name="menu" />
	</div>
		<tiles:insertAttribute name="body" />
		
		<tiles:insertAttribute name="footer" />
</div>
</body>

<script>
$(function(){
	
});
</script>
</html>