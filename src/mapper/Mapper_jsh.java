package mapper;

import model.Member;

public interface Mapper_jsh {

	int insertMember(Member member);

	String loginMember(String id);
	
}
