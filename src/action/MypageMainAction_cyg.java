package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;
import service.Service_cyg;

public class MypageMainAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();
		Member member = new Member();
	
		member.setId((String)request.getSession().getAttribute("id"));		
		
		member = service.detailMemberService((String)request.getSession().getAttribute("id"));
		request.getSession().setAttribute("member", member);
		
		forward.setRedirect(false);
		forward.setPath("/myPage_cyg.jsp");
		return forward;
	}

}