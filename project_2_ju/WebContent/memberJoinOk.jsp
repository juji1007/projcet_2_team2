<%@page import="com.project.vo.AccountVO"%>
<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
	request.setCharacterEncoding("UTF-8");
%>
<%-- 	<jsp:useBean id="" --%>
<%
	
	// ȸ������ ������ �ޱ�
// 	int no = 3;
	String name = request.getParameter("name");
	String id = request.getParameter("id");
	String pwd = request.getParameter("pwd");
	String nickName = request.getParameter("nickName");
	String email = request.getParameter("email");
	String crticCheck = request.getParameter("criticCheck"); // ������������������
	System.out.println("crticCheck : " + crticCheck);
	int criticCheckInt = 0;
	if (crticCheck != null && !crticCheck.isEmpty()) {
		criticCheckInt = Integer.parseInt(crticCheck);
	} else {
		criticCheckInt = 0;
	}
	System.out.println("criticCheckInt : " + criticCheckInt);
	
	AccountVO avo = new AccountVO();
	avo.setNo(11);
	avo.setName(name);
	avo.setId(id);
	avo.setPwd(pwd);
	avo.setNick(nickName);
	avo.setEmail(email);
	avo.setCritic_check(criticCheckInt);
	
	// ȸ������ ������ DB�� ����
	int checkJoin = AccountDAO.insertMember(avo);
	if (checkJoin == -1) {
		String alertMessage = "ȸ�������� �����Ͽ����ϴ�.";
%>
	<script>
		alert("<%= alertMessage %>");
		location.href="login_page.jsp";
	</script>
<%
// 	response.sendRedirect("login_page.jsp");
	} else {
%>

	<script>
		alert("ȸ�����Կ� �����ϼ̽��ϴ�.");
		location.href="login_page.jsp";
	</script>
<%
	}
// 	response.sendRedirect("login_page.jsp");
%>