<%@page import="com.project.vo.AccountVO"%>
<%@page import="java.util.List"%>
<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("UTF-8");

	//���̵�, ��� �ޱ�
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
// 	System.out.println("id : " + id);
	
	//���̵�, ��� DB���� ��ȸ
// 	List<AccountVO> list = AccountDAO.getAccountLogin(id, pwd);
// 	System.out.println("list : " + list);
	
// 	if (list == null) {
	String id1 = AccountDAO.getAccountSearchLoginCheckId(id);
	if (id1 == null) {
%>
	<script>
		alert("�α��ο� �����ϼ̽��ϴ�.");
		history.back();
	</script>
		
<%
	} else {
	
%>
		<script>
			alert("�α��ο� �����ϼ̽��ϴ�.");
			history.back();
		</script>
<%
	}
%>