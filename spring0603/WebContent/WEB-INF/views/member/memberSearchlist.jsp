<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- article 영역 시작 -->
<div id="article">
	<div id="header2">
		<h1>MemeberSearchList 예제</h1>
		<p id="time">Oct 1th, 2020</p>
	</div>
	<div id="content">
		<p>여기는 메인 컨텐츠</p>
		<div id="cont">
			<table>
				<thead>
					<tr>
						<th colspan="4">리스트</th>
					</tr>
					<tr>
						<td>번호</td>
						<td>아이디</td>
						<td>이름</td>
						<td>날짜</td>
					</tr>

				</thead>
				<tbody>
					<c:forEach var="listv" items="${list }">
						<tr>
							<td>${listv.num }</td>
							<td>${listv.id }</td>
							<td>${listv.uname }</td>
							<td>${listv.rdate }</td>
						</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="4" id="pageId">
							<%-- page 처리 --%>
						  <%@ include file="searchPageProcess.jsp" %> 
						</td>
					</tr>
					<tr>
						<th colspan="4">
							<form action="membersearchlist" method="post">
								 <input type="hidden" name="vo" value="${paging }">
								<select name="searchType">
									<option value="1" <c:if test="${paging.searchType==1}">selected="selected" </c:if>>아이디</option>
									<option value="2" <c:if test="${paging.searchType==2}">selected="selected" </c:if>  >이름</option>
								
								</select>&nbsp; <input name="searchValue" <c:if test="${paging.searchValue !=null }"> value="${paging.searchValue }"</c:if> >
								<input type="submit" value="검색하기">
								
								
							</form>
						</th>
					</tr>
					<tr>
						<th colspan="4">
							<input type="button" value="writer" onclick="location='memberForm'">
						</th>
					
					</tr>
				</tfoot>
			</table>
				
		</div>
	</div>

</div>