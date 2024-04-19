<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="org.apache.ibatis.javassist.bytecode.stackmap.BasicBlock.Catch"%>
<%@page import="com.project2.mybatis.DBService"%>
<%@page import="org.apache.ibatis.session.SqlSession"%>
<%@page import="java.util.List"%>
<%@page import="com.project2.movie.dao.MovieDAO" %>
<%@page import="com.project2.movie.vo.MovieVO" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	int mv_no = 1;
	MovieVO mvo = MovieDAO.selectOne(mv_no);
	System.out.println("mvo : " + mvo);
	pageContext.setAttribute("vo", mvo); 
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${vo.mv_title } 상세 정보</title>
    <style>
        img {
            max-width: 200px;
            height: auto;
        }
    </style>
<script type="text/javascript">
	function openReviewPopup() {
	    var popup = window.open("", "ReviewPopup", "width=400,height=400"); 
	    popup.document.write("<!DOCTYPE html>");
	    popup.document.write("<html>");
	    popup.document.write("<head>");
	    popup.document.write("<title>영화 리뷰 작성</title>");
	    popup.document.write("</head>");
	    popup.document.write("<body>");
	    popup.document.write("<h2>영화 리뷰 작성</h2>");
	    
	    popup.document.write("<label for='mvRate'>평점:</label><br>");
	    popup.document.write("<select id='mvRate' name='mvRate'>");
	    popup.document.write("<option value='1'>1</option>");
	    popup.document.write("<option value='2'>2</option>");
	    popup.document.write("<option value='3'>3</option>");
	    popup.document.write("<option value='4'>4</option>");
	    popup.document.write("<option value='5'>5</option>");
	    popup.document.write("</select><br><br>");
		
	    popup.document.write("<label for='rvTitle'>제목:</label><br>");
	    popup.document.write("<input type='text' id='rvTitle' name='rvTitle' required><br><br>");
	
	    popup.document.write("<label for='rvContent'>내용:</label><br>");
	    popup.document.write("<textarea id='rvContent' name='rvContent' rows='4' cols='50' required></textarea><br><br>");
		
	    popup.document.write("<input type='button' value='등록하기' onclick='submitReview()'>");
	    popup.document.write("</body>");
	    popup.document.write("</html>");
	}
	
	function submitReview() {
	<%
		String rvTitle = request.getParameter("rvTitle");
		String rvContent = request.getParameter("rvContent");
		
		System.out.println("rvTitle : " + rvTitle);
		System.out.println("rvContent : " + rvContent);
	%>
		
	    console.log("rvTitle: " + rvTitle);
	    console.log("rvContent: " + rvContent);
	    console.log("mvRate: " + mvRate);
	
	    window.close();
	}
</script>
<!--  <style>
	img {
            max-width: 200px;
            height: auto;
        }
	#lay_pop{position:absolute;z-index:500;width:600px;height:400px;overflow-y:scroll;display:none;background-color:#ffffff;border:2px solid #cccccc}
	#all_body{position:absolute;z-index:9;display:block;filter:alpha(opacity=50);opacity:0.5;-moz-opacity:0.5;background-color:#000000;left:0;top:0}
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<script language="javascript">
	function pushLayer(){
		var $width=parseInt($("#lay_pop").css("width"));
		var $height=parseInt($("#lay_pop").css("height"));
		var left=($(window).width()-$width)/2;
		var sctop=$(window).scrollTop()*2;
		var top=($(window).height()-$height+sctop)/2;
		var height=document.getElementsByTagName("body")[0].scrollHeight;
		$("#lay_pop").css("left",left);
		$("#lay_pop").css("top",top);
		$("#lay_pop").css("display","block");
		$("#lay_pop").css("z-index","555");
		$("#all_body").css("display","block");
		$("#all_body").css("width",$(window).width());
		$("#all_body").css("height",height);
		

	}
	function layerClose(lay1,lay2){
		$("#"+lay1).css("display","none");
		$("#"+lay2).css("display","none");
	}
</script> -->
</head>
<body>
    <img src="ui/title.png" alt="UiTitle">
    <hr>
    <div>
        <img src="poster/${vo.mv_poster }" alt="Kungfu Panda4 Poster">
    </div>
    <button onclick="openReviewPopup()">리뷰 작성</button>
	<div>	
			<h2>${vo.mv_title }</h2>
			 <p><strong>감독:</strong> ${vo.mv_direct }</p>
			 <p><strong>등급:</strong> ${vo.mv_grade }</p> 
			 <p><strong>장르:</strong> ${vo.mv_genre }</p>
			 <p><strong>평점:</strong> ${vo.mv_rate }</p>
			 <p><strong>개봉년도:</strong> ${vo.mv_date }</p>
			 <p><strong>출연:</strong> ${vo.mv_actor }</p>
			 <p><strong>누적관객:</strong> ${vo.mv_audience }</p> 
	</div>
	<!--  <div id="lay_pop"><a href="javascript:;" onclick="layerClose('lay_pop','all_body')">닫기</a></div>
	<div id="all_body"></div>
	<input type="button" value="레이어" onclick="pushLayer()"> -->
</body>
</html>








