<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�α���</title>
<script>
	function member_join(frm) {
		frm.action="controller?type=memberJoin";
		frm.submit();
	}
	function login(frm) {
		frm.action="controller?type=login";
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
	<div id="loginArea">
		<form method="post">
			<table>
				<caption><h2>�α���</h2></caption>
				<thead>
					<tr>
						<th>���̵�</th>
						<td colspan="3">
							<input type="text" name="id" title="���̵�" />
						</td>
					</tr>
					<tr>
						<th>��й�ȣ</th>
						<td colspan="3">
							<input type="password" name="pwd" title="��й�ȣ" />
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td colspan="2">
							<input type="reset" value="�ʱ�ȭ"/>
							<input type="button" value="ȸ������" onclick="member_join(this.form)"/>
							<input type="button" value="���̵�ã��" onclick="search_id(this.form)"/>
						</td>
					</tr>
					<tr>
						<td colspan="4">
							<input type="button" value="�α����ϱ�" onclick="login(this.form)"/>
						</td>
					</tr>
				</tbody>
				
			</table>
		</form>
	</div>
</body>
</html>