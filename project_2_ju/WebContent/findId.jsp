<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���̵�ã��</title>
<script>
	function findId_Ok(frm) {
		frm.action="loginController?type=findIdOk";
		frm.submit();
	}
</script>
<style type="text/css">
	table {
		border: solid black 1px;
	}
	th, td {
		border: solid black 1px;
	}
</style>
</head>
<body>
	<div id="findIdArea">
		<form method="post">
			<table>
				<caption><h2>���̵�ã��</h2></caption>
				<thead>
					<tr>
						<th>�̸����Է�</th>
						<td colspan="5">
							<input type="text" name="email" title="�̸���"/>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ"/>
						</td>
						<td colspan="4">
<!-- 							<input type="button" value="���̵�ã��" onclick="location.href='loginController?type=findIdOk'"/> -->
							<input type="button" value="���̵�ã��" onclick="findId_Ok(this.form)"/>
						</td>
					</tr>
				</tbody>
			</table>
		</form>
	</div>
	
</body>
</html>