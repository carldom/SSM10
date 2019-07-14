<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/jquery.min.js"></script>
<style type="text/css">
	*{
		text-align:center;
		margin:0 auto;
	}
	
	table,table tr th, table tr td ,#stubody td{
	      border:1px solid #a8aeb2;
	      padding: 5px 10px;
	}
	table ,#stubody td{
	      text-align: center;
	      border-collapse: collapse;
	       border:1px solid #a8aeb2;
	}

</style>

</head>

<script type="text/javascript">
	$(function(){
		studentInfo();
	})

	function studentInfo(){
		$.ajax({
			url:"${pageContext.request.contextPath}/student/queryStudent",
			type:"post",
			success:function(data){
				alert(data);
				$("#stubody").html("");
				$.each(data,function(i,n){
					$("#stubody").append("<tr>")
					.append("<td>"+n.id+"</td>")
					.append("<td>"+n.name+"</td>")
					.append("<td>"+n.age+"</td>")
					.append("</tr>")
				})
			}
		})
	}

</script>

<body>
	<div id="border1">
		<p>listStudent.jsp</p>
		<table>
			<thead>
				<tr>
					<td>id</td>
					<td>name</td>
					<td>age</td>
				</tr>
			</thead>
			<tbody id="stubody">
				
			</tbody>
		</table>
	</div>
</body>
</html>