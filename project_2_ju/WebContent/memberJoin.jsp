<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
<script src="https://code.jquery.com/jquery-3.7.1.min.js"></script>
<script>
	var isCheckId = false;
	
	function checkId(frm) {
// 		var checkId = form.elements["id"];
		var checkId = frm.id.value;
		if (checkId.trim().length == 0) {
			alert("���̵� �Է����ּ���!");
			return false;
		}
		$.ajax ({
			type: "POST",
			url: "ajaxController",
			data: {
				action: "checkDoubleId",
				id: checkId
			},
			success : function(response){
				if(response == "true") {
					alert("�̹� ������� ���̵� �Դϴ�.");
					frm.id.value = "";
					return false;
				} else {
					alert("��� ������ ���̵� �Դϴ�.");
					isCheckId = true;
					return true;
				}
			},
			error : function(jqXHR, textStatus, errorThrown){
				alert("Ajax ó�� ���� : \n"
						+ "jqXHR.readyState : " + jqXHR.readyState + "\n"
						+ "textStatus : " + textStatus + "\n"
						+ "errorThrown : " + errorThrown);
				return false;
			}
		});
	}
	
	function check_pwd(frm) {
		var pwd = frm.pwd.value;
		var checkPwd = frm.pwdCheck.value;
		
		if(pwd != checkPwd) {
			alert("��й�ȣ�� ��й�ȣȮ�� ���� �ٸ��ϴ�!");
			frm.pwdCheck.value="";
			return false;
		}
		return true;
	}
	
	function check_critic(frm) {
    var checkCritic = frm.elements["criticCheck"];
    if (checkCritic.checked) {
        checkCritic.value = "1";
    } else {
        checkCritic.value = "0";
    }
}

	
	function memberJoin_ok(frm) {
		
		if(!isCheckId) {
			alert("���̵� �ߺ�üũ�� ���� ���ּ���!");
			return;
		}
		
		frm.action="loginController?type=memberJoinOk";
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
				<caption><h2>ȸ������</h2></caption>
				<thead>
					<tr>
						<th>���̵�</th>
						<td colspan="3">
							<input type="text" name="id" title="���̵�" />
							<input type="button" value="���̵��ߺ�üũ" onclick="checkId(this.form)"/>
						</td>
					</tr>
					<tr>
						<th>��й�ȣ</th>
						<td colspan="3">
							<input type="password" name="pwd" title="��й�ȣ" />
						</td>
					</tr>
					<tr>
						<th>��й�ȣȮ��</th>
						<td colspan="3">
							<input type="password" name="pwdCheck" title="��й�ȣȮ��" onblur="check_pwd(this.form)"/>
						</td>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th>�̸�</th>
						<td colspan="3">
							<input type="text" name="name" title="�̸�" />
						</td>
					</tr>
					<tr>
						<th>�г���</th>
						<td colspan="3">
							<input type="text" name="nickName" title="�г���" />
						</td>
					</tr>
<!-- 					<tr> -->
<!-- 						<th>�ּ�</th> -->
<!-- 						<td colspan="3"> -->
<!-- 							<input type="text" name="address" title="�ּ�" /> -->
<!-- 						</td> -->
<!-- 					</tr> -->
					<tr>
						<th>�̸���</th>
						<td colspan="3">
							<input type="text" name="email" title="�̸���" />
						</td>
					</tr>
					<tr>
						<th>��а�����</th>
						<td colspan="3">
							<input type="radio" name="criticCheck" title="��а�" onclick="check_critic(this.form)"/>
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
							<input type="button" value="ȸ�������ϱ�" onclick="memberJoin_ok(this.form)"/>
						</td>
					</tr>
				</tfoot>
				
			</table>
		</form>
	</div>
</body>
</html>