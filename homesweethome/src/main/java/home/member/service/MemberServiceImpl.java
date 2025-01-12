package home.member.service;

import java.sql.SQLException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import home.member.dao.MemberDAO;
import home.member.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDAO memberDAO;

	@Override
	public MemberVO getMember(String id) throws SQLException {
	    return memberDAO.selectMemberByMid(id);
	}
	
}
