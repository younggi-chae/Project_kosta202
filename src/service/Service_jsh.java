package service;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import dao.DAO_jsh;
import model.Member;



public class Service_jsh {

	private static Service_jsh service = new Service_jsh();
	private static DAO_jsh dao;
	
	public static Service_jsh getInstance() {
		dao = DAO_jsh.getInstance();
		return service;
	}
	
	public int insertMemberService(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");
		
		Member member = new Member();
		member.setId(request.getParameter("id"));
		member.setPassword(request.getParameter("password"));
		member.setPhoneNo(request.getParameter("phoneNo"));
		member.setAddress(request.getParameter("address"));
		member.setSex(request.getParameter("sex"));
		member.setName(request.getParameter("name"));
		member.setEmail(request.getParameter("email"));
	
		
		return dao.insertMember(member);
	}

	public int loginService(HttpServletRequest request) {

		
		String chk_id = request.getParameter("username");
		String chk_password = request.getParameter("pass");
		
		
		String password2 = dao.loginMember(chk_id);
	
	
		
		
		
		HttpSession session = request.getSession(true);	
	
		

		
		if(session.getAttribute("id")!=null) {  //�α��� ����
			String id=(String)session.getAttribute("id");
		}else {
			if(chk_password.equals(password2)) {
				session.setAttribute("id",chk_id);
			}
		}
		
		System.out.println(session.getAttribute("id"));
		
		if(chk_password.equals(password2)) {
			return 1;
		}else {
			
			return 0;
		}
		
		
		
		
		
	
		

		
		
		
	}


}
