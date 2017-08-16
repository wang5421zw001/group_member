package com.bw;

import com.bw.bean.Group;
import com.bw.bean.Member;
import com.bw.dao.GroupMapper;
import com.bw.dao.MemberMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;


@RunWith(SpringRunner.class)
@SpringBootTest
public class GroupMemberApplicationTests {

	@Autowired
	private MemberMapper memberMapper;

	@Autowired
	private GroupMapper groupMapper;

	@Test
	public void contextLoads() {
	}

	@Test
	public void testMemberMapper(){

		/*Member member = memberMapper.selectMemberById(3);
		System.out.println(member.getMname()+"--->"+member.getGroup().getGname());*/

//		List<Member> members = memberMapper.selectMembersSimpleByGid(1);
//

		List<Group> groups = groupMapper.selectGroupsWithMem();

		for (int i = 0; i <groups.size() ; i++) {
			Group group = groups.get(i);
			System.out.println("-------"+group.getGname()+"--------");

			List<Member> memberList = group.getMemberList();
			for (Member m: memberList ) {
				System.out.println(m.getMname());
			}

		}


	}


}
