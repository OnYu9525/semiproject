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
         
			<table>
				<thead>
					<tr>
						<th colspan="2">SurveyClientDetail</th>
					</tr>
				
				</thead>
				<tbody>
					<c:forEach var="i" items="${list}" varStatus="e">
						<c:if test="${e.index==0 }">
							<tr>
								<th>����</th>
								<td>
									<input type="text" readonly="readonly" value="${i.sub}" name="sub" id="sub">
									<input type="hidden" id="num" name="num" value="${i.num}">
								</td>
							</tr>
						
							<tr>
								<th>���׼�</th>
								<td>
									<input type="number" name="code" readonly="readonly" id="code" min="0" step="1" max="5" value="${i.code }">
									<input type="hidden" id="subtype" name="subtype" >
								</td>
							</tr>
					</c:if>
					<tr>
						<th>${e.index+1 }�� �������� ${i.subtype }</th>
						<td><input type="radio" name="checktitle" value="${i.subtype }" class="checktitle">${i.surveytitle } => ${i.surveycnt }��</td>
					</tr>
					</c:forEach>
				</tbody>
				<tfoot>
					<tr>
						<th colspan="2">
						
						<input type="submit" value="send">&nbsp;
						<input type="button" id="list" value="����Ʈ��">
						
						
						</th>
					</tr>
				</tfoot>
			</table>
			<div id="piechart"></div>
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
  <script src="https://d3js.org/d3.v3.min.js"></script>     
<script src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.11/c3.min.js"></script>


    <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function chart(){
	$.ajax({
		url:'surveyClientDetail2?num='+$('#num').val(),
		success:function(data){
			
			c3.generate({
				   bindto: "#piechart",
				   data: {
					   json: [data],
					   keys :{
						 value:Object.keys(data),  
					   },
				    	type:"donut",
				   },
				   donut: {
					   title: $('#sub').val(),
				   },
				 });
		}
	});
}

$(function(){
	
	chart();
	
	
	$('#client').click(function() {
		location='surveyClient';
	})
	$('#write').click(function() {
		location='surveyForm';
	})
	$('#main').click(function() {
		location='index';
	});
});

</script>