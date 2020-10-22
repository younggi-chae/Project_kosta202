package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;
import service.Service_cyg;

public class MemberDetailAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();
		
		Member member = new Member();
		
		member = service.detailMemberService(request.getParameter("id"));			
		request.setAttribute("member", member);
		System.out.println(member);		
		forward.setRedirect(false);
		forward.setPath("/myPage-info.jsp");
		return forward;
	}

}
