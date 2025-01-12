package home.member.service;

import java.sql.SQLException;
import java.util.List;

import org.springframework.stereotype.Service;

import home.member.dao.SearchMemberDAO;
import home.member.dto.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

private SearchMemberDAO searchMemberDAO;
	
	public MemberServiceImpl(SearchMemberDAO searchMemberDAO) {
		this.searchMemberDAO = searchMemberDAO;		
	}

	@Override
	public List<MemberVO> list() throws SQLException {
		return searchMemberDAO.selectList();
	}

	@Override
	public MemberVO getMember(String mid) throws SQLException {
		return searchMemberDAO.selectMemberByMid(mid);
	}

	@Override
	public void regist(MemberVO member) throws SQLException {
		searchMemberDAO.insertMember(member);
	}

	@Override
	public void modify(MemberVO member) throws SQLException {
		searchMemberDAO.updateMember(member);
	}

	@Override
	public void remove(String mid) throws SQLException {
		searchMemberDAO.deleteMember(mid);
	}
	
	
}
