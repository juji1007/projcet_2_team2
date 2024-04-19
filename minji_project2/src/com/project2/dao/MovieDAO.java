package com.project2.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import com.project2.mybatis.DBService;
import com.project2.vo.MovieVO;

public class MovieDAO {
	
	//영화목록 전체조회
	public static List<MovieVO> movieList() {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("movie.all");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	//영화번호로 조회
	public static List<MovieVO> searchOne(int mNo) {
		try (SqlSession ss = DBService.getFactory().openSession()) {
			return ss.selectList("movie.one", ss);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}
	
	
	
}
