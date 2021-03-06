<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- article 영역 시작 -->
    <div id="article">
        <div id="header2">
            <h1>SurveyClient 예제</h1>
            <p id="time">Oct 1th, 2020</p>
        </div>
     <div id="section2">
            <div id="header4">
                <h1>Section Heading</h1>
            </div>     
 <%-- Content 내용들어 갈자리 --%>   
           <!-- MemberForm들어갈 자리 -->
           <form method="post" action="memberIn">
           	<table>
           		<tr>
           		
           			<td>아이디</td>
           			<td>
           				<input type="text" name="id" id="id" maxlength="10"  style="width: 150px;">
           				<input type="button"  value="중복확인" id="idChkBtn" style="font-size: 10px; width: 80px; height: 20px;">
           			</td>
           		</tr>
           		<tr>
           		
           			<td colspan="2" id="target"></td>
           			
           		</tr>
           		<tr>
           		
           			<td>비밀번호</td>
           			<td>
           				<input type="password" name="pwd" maxlength="10"/>
           				
           			</td>
           		</tr>
           		<tr>
           		
           			<td>이름</td>
           			<td>
           				<input type="text" name="uname" />
           				
           			</td>
           		</tr>
           		<tr>
           		
           		
           			<td colspan="2">
           				<input type="submit" value="가입"/>
           				
           			</td>
           		</tr>
           	</table>
           </form>
 <%-- Content 내용들어 갈자리 --%> 
 <p>하이퍼텍스트는 웹 브라우저라 불리는 프로그램을 통해 웹 서버에서 "문서"나 웹 페이지등의 정보 조각을 읽어들여 컴퓨터 모니터에 출력하는 형태로 보이게 된다. 그러고 나서 사용자는 각 페이지에 있는 하이퍼링크를 따라 다른 문서로 이동하거나, 그 페이지를 서비스하고 있는 서버로 일련의 정보를 보낼 수도 있다. 하이퍼링크를 따라 이동하는 행위를 흔히 웹 서핑(web surfing, 문화어: 망유람) 또는 웹 브라우징이라 한다. 그리고 관련된 내용들이 모여있는 웹 페이지들의 집합을 웹 사이트라 한다.</p>
            <div id="footer2">
                <p>월드 와이드 웹은 다음의 세가지 기능으로 요약할 수 있겠다. 첫번째 통일된 웹 자원의 위치 지정 방법 예를 들면 URL. 두번째 웹의 자원 이름에 접근하는 프로토콜(protocol) 예를 들면 HTTP, 자원들 사이를 쉽게 항해 할 수 있는 언어 예를 들면 HTML.</p>
            </div>
        </div>
        <div id="footer3">
            Article Footer
        </div>
    </div>
    <!-- article 영역 끝 -->
    <div id="aside">
        <div id="header5">
            <h1>Siderbar Heading</h1>
        </div>
        <p>문서의 주 내용이 아닌 관련성이 낮은 내용들은 aside로 표시할 수 있다.
  본문과 직접적으로 상관이 없는 관련 사이트 링크나 안내글,
   nav 요소의 그룹 등이 aside 요소로 기술 될 수 있다.
  보통 블로그에서 좌우측 사이드바를 의미하는 것으로서 사이드바의 특성으로 
  볼때 필수적이지 않아서 표시를 해도 되고 안 해도 되는 내용들 또는 광고물같은
   내용들이 자리할 수 있다.</p>
    </div>
   
<script>
$(function(){
	
	$('#idChkBtn').click(function() {
		
		var id=$('#id').val();
		var url='idChk';
		
		$.ajax({
			url:url,
			type:'post',
			data:{id:id},
			success:function(d){
				if(d===0){
				$('#target').html("<p style='color:blue'>사용 가능한 아이디입니다.</p>");
					
				}else{
					$('#target').html("<p style='color:red'>이미 존재하는 아이디입니다.</p>");
					$('#id').val("");
				}
			},
			error:function(e){
				alert("에러입니다.");
			}
		});
	})
});
</script>