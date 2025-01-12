package home.member.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import home.member.dto.MemberVO;

public interface MemberService {
	
	List<MemberVO> list()throws SQLException;
	
    MemberVO getMember(String mid) throws SQLException; 
    
    void regist(MemberVO member) throws SQLException;
    
    void modify(MemberVO member) throws SQLException;
    
    void remove(String mid) throws SQLException;
}