package com.project2.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.project2.mybatis.DBService;
import com.project2.vo.ReviewVO;

public class ReviewDAO {

/*
	//리뷰 전체 목록 조회
	public static List<ReviewVO> getList() {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("review.all");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
*/
	//카테고리별(영화명,작성자,작성일) 목록 조회
	public static List<ReviewVO> selectOne(String idx, String keyword) {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			Map<String, String> map = new HashMap<String, String>();
			map.put("idx", idx);
			map.put("keyword", keyword);
			
			return ss.selectList("review.one", map);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

}
