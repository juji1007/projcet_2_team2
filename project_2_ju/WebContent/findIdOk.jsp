<%@page import="com.project.dao.AccountDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    request.setCharacterEncoding("UTF-8");

    // �̸��� �ּ� �ޱ�
    String email = request.getParameter("email");
    System.out.println("emailjsp : " + email);
    // ���̵� DB���� ��ȸ
    String id = AccountDAO.getAccountSearchId(email);
    System.out.println("id : " + id);
    if (id == null) {
%>
    <script>
        alert("ȸ�����Ե� �̸����� �����ϴ�.");
        history.back();
    </script>
<%
    } else {
%>
    <script>
        alert("���̵�� <%= id %> �Դϴ�.");
        location.href="login_page.jsp"; //���Ŀ� ù��������Ʈ�ѷ� 
    </script>
<%
    }
%>
