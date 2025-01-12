package home.member.service;

import java.sql.SQLException;

import home.member.dto.MemberVO;

public interface MemberService {
    MemberVO getMember(String id) throws SQLException; 
    

}

