package home.member.dao;

import java.sql.SQLException;
import java.util.List;

import org.apache.ibatis.session.SqlSession;

import home.member.dto.MemberVO;

public class MybatisMemberDAOImpl implements MemberDAO{

	private SqlSession session;

	public MybatisMemberDAOImpl(SqlSession session) {
		this.session = session;
	}

	@Override
	public List<MemberVO> selectList() throws SQLException {
		return session.selectList("Member-Mapper.selectMemberList");
	}

	@Override
	public MemberVO selectMemberByMid(String mid) throws SQLException {
		return session.selectOne("Member-Mapper.selectMemberByMid", mid);
	}

	@Override
	public void insertMember(MemberVO member) throws SQLException {
		session.insert("Member-Mapper.insertMember", member);
		
	}

	@Override
	public void updateMember(MemberVO member) throws SQLException {
		session.update("Member-Mapper.updateMEmber", member);
	}

	@Override
	public void deleteMember(String mid) throws SQLException {
		session.delete("Member-Mapper.deleteMember" ,mid);		
	}
	
	

}
