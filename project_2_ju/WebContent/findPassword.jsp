<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>��й�ȣã��</title>
<script>
	function check_password(frm) {
		var password = frm.password.value;
		var checkPassword = frm.passwordCheck.value;
		
		if(password != checkPassword) {
			alert("��й�ȣ�� ��й�ȣȮ�� ���� �ٸ��ϴ�!");
			frm.passwordCheck.value="";
		}
	}
	function findPassword_Ok(frm) {
		frm.action="loginController?type=findPasswordOk";
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
	<div id="findPasswordArea">
		<form method="post">
			<table>
				<caption><h2>��й�ȣã��</h2></caption>
				<thead>
					<tr>
						<th>���̵��Է�</th>
						<td colspan="3">
							<input type="text" name="id" title="���̵�"/>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>��й�ȣ�缳��</th>
						<td colspan="3">
							<input type="password" name="password" title="���ο��й�ȣ"/>
						</td>
					</tr>
					<tr>
						<th>��й�ȣ�缳��Ȯ��</th>
						<td colspan="3">
							<input type="password" name="passwordCheck" title="���ο��й�ȣȮ��" onblur="check_password(this.form)"/>
						</td>
					</tr>
				</tbody>
				<tfoot>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
<!-- 							<input type="button" value="���̵�ã��" onclick="location.href='loginController?type=findIdOk'"/> -->
							<input type="button" value="��й�ȣ�缳��" onclick="findPassword_Ok(this.form)"/>
						</td>
					</tr>
				</tfoot>
			</table>
		</form>
	</div>
</body>
</html>