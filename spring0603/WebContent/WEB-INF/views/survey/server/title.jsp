<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:forEach step="1" begin="1" end="${num }" varStatus="i">
					<tr>
						<th>설문문항${i.index }</th>
						<td><input type="text" name="surveytitle" class="surveytitle"></td>
					</tr>
</c:forEach>