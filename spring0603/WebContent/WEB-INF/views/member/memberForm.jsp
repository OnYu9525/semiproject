<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!-- article ���� ���� -->
    <div id="article">
        <div id="header2">
            <h1>SurveyClient ����</h1>
            <p id="time">Oct 1th, 2020</p>
        </div>
     <div id="section2">
            <div id="header4">
                <h1>Section Heading</h1>
            </div>     
 <%-- Content ������ ���ڸ� --%>   
           <!-- MemberForm�� �ڸ� -->
           <form method="post" action="memberIn">
           	<table>
           		<tr>
           		
           			<td>���̵�</td>
           			<td>
           				<input type="text" name="id" id="id" maxlength="10"  style="width: 150px;">
           				<input type="button"  value="�ߺ�Ȯ��" id="idChkBtn" style="font-size: 10px; width: 80px; height: 20px;">
           			</td>
           		</tr>
           		<tr>
           		
           			<td colspan="2" id="target"></td>
           			
           		</tr>
           		<tr>
           		
           			<td>��й�ȣ</td>
           			<td>
           				<input type="password" name="pwd" maxlength="10"/>
           				
           			</td>
           		</tr>
           		<tr>
           		
           			<td>�̸�</td>
           			<td>
           				<input type="text" name="uname" />
           				
           			</td>
           		</tr>
           		<tr>
           		
           		
           			<td colspan="2">
           				<input type="submit" value="����"/>
           				
           			</td>
           		</tr>
           	</table>
           </form>
 <%-- Content ������ ���ڸ� --%> 
 <p>�������ؽ�Ʈ�� �� �������� �Ҹ��� ���α׷��� ���� �� �������� "����"�� �� ���������� ���� ������ �о�鿩 ��ǻ�� ����Ϳ� ����ϴ� ���·� ���̰� �ȴ�. �׷��� ���� ����ڴ� �� �������� �ִ� �����۸�ũ�� ���� �ٸ� ������ �̵��ϰų�, �� �������� �����ϰ� �ִ� ������ �Ϸ��� ������ ���� ���� �ִ�. �����۸�ũ�� ���� �̵��ϴ� ������ ���� �� ����(web surfing, ��ȭ��: ������) �Ǵ� �� ����¡�̶� �Ѵ�. �׸��� ���õ� ������� ���ִ� �� ���������� ������ �� ����Ʈ�� �Ѵ�.</p>
            <div id="footer2">
                <p>���� ���̵� ���� ������ ������ ������� ����� �� �ְڴ�. ù��° ���ϵ� �� �ڿ��� ��ġ ���� ��� ���� ��� URL. �ι�° ���� �ڿ� �̸��� �����ϴ� ��������(protocol) ���� ��� HTTP, �ڿ��� ���̸� ���� ���� �� �� �ִ� ��� ���� ��� HTML.</p>
            </div>
        </div>
        <div id="footer3">
            Article Footer
        </div>
    </div>
    <!-- article ���� �� -->
    <div id="aside">
        <div id="header5">
            <h1>Siderbar Heading</h1>
        </div>
        <p>������ �� ������ �ƴ� ���ü��� ���� ������� aside�� ǥ���� �� �ִ�.
  ������ ���������� ����� ���� ���� ����Ʈ ��ũ�� �ȳ���,
   nav ����� �׷� ���� aside ��ҷ� ��� �� �� �ִ�.
  ���� ���α׿��� �¿��� ���̵�ٸ� �ǹ��ϴ� �����μ� ���̵���� Ư������ 
  ���� �ʼ������� �ʾƼ� ǥ�ø� �ص� �ǰ� �� �ص� �Ǵ� ����� �Ǵ� ����������
   ������� �ڸ��� �� �ִ�.</p>
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
				$('#target').html("<p style='color:blue'>��� ������ ���̵��Դϴ�.</p>");
					
				}else{
					$('#target').html("<p style='color:red'>�̹� �����ϴ� ���̵��Դϴ�.</p>");
					$('#id').val("");
				}
			},
			error:function(e){
				alert("�����Դϴ�.");
			}
		});
	})
});
</script>