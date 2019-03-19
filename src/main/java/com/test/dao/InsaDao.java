package com.test.dao;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.ServletRequest;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.test.vo.MemberVo;

@Repository("TestDao")
public class InsaDao {

	@Inject
	private SqlSession session;
		
	public List<MemberVo> search(ServletRequest request, MemberVo vo) {		
		List<MemberVo> list = session.selectList("member_card", vo);		
		return list;		
	}
	
	//memver list select
	public List<Object> searchlists(ServletRequest request, Map<String, String> map) {
		List<Object> list = session.selectList("searchlists", map);		 
		 return list;
	}
	
	//인사카드 업데이트
	public void update(ServletRequest request, MemberVo vo) {			
		 session.update("memver_update", vo); 
		 session.update("privacy_update", vo); 
		 session.update("military_update", vo); 		
	}
	
	//array 업데이트
	public void update(ServletRequest request, ArrayList<MemberVo> list) {				
		session.update("updatearraylist", list);	
	}

	public void Pj_update(ServletRequest request, ArrayList<Object> list) {
		session.update("pj_update", list); 					
	}

	//인스트
	public String insert(ServletRequest request, MemberVo vo) {		 			
		session.insert("mem_insert", vo);
		return "MEM"+vo.getMem_no(); //증가 시퀀스값			
	}	
	public void inserts(ServletRequest request, MemberVo vo) {
		session.insert("pri_insert", vo);
	}

	public void delete(Map<String, Object> map) {
		session.delete("delete", map); 
	}

	


	

	



	





	
}
