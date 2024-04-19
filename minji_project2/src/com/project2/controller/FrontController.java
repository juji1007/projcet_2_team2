package com.project2.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.project2.dao.ReviewDAO;
import com.project2.vo.ReviewVO;

@WebServlet("/controller")
public class FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FrontController doGet() 시작~~");
		
		String category = request.getParameter("category");
		System.out.println("category : " + category);
		
		System.out.println(">> selectOne 처리");
		
		request.setCharacterEncoding("UTF-8");
		
		if ("selectOne".equals(category)) {
			System.out.println(">> selectOne 요청 처리~~");
			
			String idx = request.getParameter("idx");
			String keyword = request.getParameter("keyword");
			System.out.println("idx, keyword : " + idx + ", " + keyword);
			
			if (keyword == null || keyword.trim().length() == 0) {
				request.getRequestDispatcher("reviewMain.jsp").forward(request, response);
				return;
			}
			
			List<ReviewVO> listOne = ReviewDAO.selectOne(idx, keyword);
			System.out.println("list : " + listOne);
			
			String sort = "";
			switch(idx) {
			case "0" : sort="영화명"; break;
			case "1" : sort="작성자"; break;
			case "2" : sort="작성일"; break;
			}
			
			request.setAttribute("listOne", listOne);
			request.setAttribute("sort", sort);
			
			request.getRequestDispatcher("selectOne.jsp").forward(request, response);
		}
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("FrontController doPost() 시작~~");
		doGet(request, response);
		
	}

}
