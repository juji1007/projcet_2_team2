<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("UTF-8");

	//id, �ٲܺ�� ��������
	String id = request.getParameter("id");
	String pwd = request.getParameter("password");
	System.out.println("passwordjsp : " + pwd);
	
	//���̵�� db��ȸ �� ��� �ٲٱ�
	String checkId = AccountDAO.getAccountSearchPwd(id);
	System.out.println("id : " + checkId);
	if (checkId == null) {
%>
	<script>
		alert("ȸ�����Ե� ���̵� �����ϴ�.");
		history.back();
	</script>
<%
	} else {
		
		//���̵����� �� ��й�ȣ �缳��
		int checkOk = AccountDAO.setAccountPwd(checkId, pwd);
		if (checkOk == -1) {
%>
	<script>
		alert("����!!!");
		history.back();
	</script>
<%
		} else {
%>
	<script>
		alert("��й�ȣ�� �����Ǿ����ϴ�. �ٽ� �α������ּ���.");
		location.href="login_page.jsp"
	</script>
<%
		}
	}
	
	
%>