package mapper;

import model.Member;

public interface Mapper_jsh {

	int insertMember(Member member);

	String loginMember(String id);

	int detailInfo(Member member);

	Member getMember(String id);


	int chk_id(String chk_id);
	
}
