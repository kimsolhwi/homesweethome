package home.commons.dataSource;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.junit.Assert;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.annotation.Rollback;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;
import org.springframework.transaction.annotation.Transactional;

import home.member.dto.MemberVO;




@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/dataSource-context.xml")
@Transactional
public class TestSqlSesion {

	@Autowired
	private SqlSession session;
	
	@Test
	public void testSelectMemberList() {
		List<MemberVO> memberList = session.selectList("Member-Mapper.selectMemberList");
		
		Assert.assertEquals(memberList.size(), 75);
		
	}
	
	@Test
	@Rollback
	public void testSelectMemberByMid() throws Exception{
		MemberVO mockMember = new MemberVO();
		
		String dataString = "1999-01-20";
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
		Date birthDate = dateFormat.parse(dataString);
		
		mockMember.setMid("jamong12");
		mockMember.setPwd("jamong1212");
		mockMember.setName("김자몽");
		mockMember.setPicture("nana.jpg");
		mockMember.setBirth(birthDate);
		mockMember.setSex(1);
		mockMember.setPhone("010-9999-1234");
		mockMember.setAddress("경기 파주시");
		mockMember.setEmail("kimjamong12@naver.com");
		
		session.insert("Member-Mapper.insertMember",mockMember);
		
		MemberVO getMember = session.selectOne("Member-Mapper.selectMemberByMid", mockMember.getMid());
		
		Assert.assertEquals(mockMember.getMid(), getMember.getMid());
	}
}
