<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
	<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>surveyAddform</title>
<style>
#container {
	text-align: center;
	margin: auto;
	width: 800px;
}

table {
	border-collapse: collapse;
	width: 100%
}

th {
	background-color: #c0c0c0
}

;
tbody img {
	width: 100px;
	height: 100px;
}

th, td {
	padding: 8px;
	text-align: center;
	border-bottom: 1px solid #ddd;
}

tr:hover {
	background-color: #f5f5f5;
}

a {
	text-decoration: none;
	color:black;
}
a:visited {
	text-decoration: none;
}
a:active {
	text-decoration: none;
}
a:hover{
	text-decoration: blink;
	color:hotpink;
}
</style>
</head>
<body>
	<div id="container">
		<form method="post" action="deptlist">
			<table>
				<thead>
					<tr>
						<th colspan="2">ResultMap 예제 2</th>
					</tr>
					
				</thead>
				<tbody>
						<tr>
							<th>부서번호</th>
							<td>
								<select id="deptno" name="deptno">
									<option value="0" selected="selected">--선택--</option>
									<c:forEach begin="10" end="60" step="10" varStatus="i" var="e">	
										<option value="${e}">${e }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						
				</tbody>
				<tfoot>
					<tr>
						<th colspan="2">
						
						<input type="submit" value="send">
						<input type="button" id="main" value="메인으로">
						
						
						</th>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	
	$('#main').click(function() {
		location="idx";
	})
	
	
});
</script>

</html>