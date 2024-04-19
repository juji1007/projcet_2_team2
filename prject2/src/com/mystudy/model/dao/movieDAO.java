package com.mystudy.model.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;

import com.mystudy.model.vo.movieVO;
import com.mystudy.mybatis.DBService;

public class movieDAO {
	public static List<movieVO> getmvTitle() {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("PROJECT2.mvTitle");
		} catch (Exception e) {
			e.printStackTrace();
		} 
		return null;
	}
	
	//영화검색(성,이름 모두에서 찾기) - getFullnameList
		public static List<movieVO> getmvTitleList(String mvTitle) {
			try (SqlSession ss = DBService.getFactory().openSession()) {
				return ss.selectList("PROJECT2.mvTitleList", mvTitle);
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return null;
		}
	
	//동적검색(사번,이름,직종,부서)
		public static List<movieVO> getMovie(String idx) {
			try (SqlSession ss = DBService.getFactory().openSession()) {
				Map<String, String> map = new HashMap<>();
				map.put("idx", idx);
				return ss.selectList("PROJECT2.movie", map);
			} catch (Exception e) {
				e.printStackTrace();
			} 
			return null;
		}
}
