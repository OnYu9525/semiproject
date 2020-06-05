<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>KOSMO-30  2020. 5. 29.</title>
<style >
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

th, td {
	padding: 8px;
	text-align: center;
	border : 1px solid #ddd;
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
		<h1>Result Map 예제 2</h1>
		<h2>부서번호 : ${dvo.deptno }  |  부서명 : ${dvo.dname}</h2>
		<table >
			<thead>
				<tr>
					<th>번호</th>
					<th>직책</th>
					<th>이름</th>
					<th>부서</th>
					<th>급여</th>
					
				
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${dvo.sawon}" var="e" varStatus="i">
					<tr>
						<td>${e.sabun }</td>
						<td>${e.sajob }</td>
						<td>${e.saname }</td>
						<td>${dvo.dname }</td>
						<td>${e.sapay }만원</td>
						
					
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<th colspan="5">
						<input type="button" id="main" value="메인으로돌아가기">
						<input type="button" id="back" value="뒤로가기">
					</th>
				</tr>
			</tfoot>
		</table>
	
	</div>
</body>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
$(function(){
	$('#main').click(function() {
		location="idx";
	})
	$('#back').click(function() {
		location="deptForm";
	})
});
</script>
</html>