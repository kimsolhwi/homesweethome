package home.commons.dataSource;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import home.member.dto.MemberVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration("classpath:home/commons/context/dataSource-context.xml")
public class TestSqlSesion {

	@Autowired
	private SqlSessionFactory factory;
	
	private SqlSession session;
	
	@Before
	public void initSqlSession() {
		session = factory.openSession();
	}
	
	@After
	public void closeSqlSession() {
		if(session!=null) session.close();
	}
	
	@Test
	public void testSelectMemberByMID() {
		String mid = "nana";
		String pwd = "nana0101!";
		
		MemberVO member = session.selectOne("Member-Mapper.selectMemberByMID", mid);
		
		Assert.assertEquals(mid, mid);
	}
}
