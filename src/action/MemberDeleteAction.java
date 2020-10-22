package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service_cyg;

public class MemberDeleteAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();
				
		String id = request.getParameter("id");
		service.deleteMemberService(id);
		
		forward.setRedirect(true);
		forward.setPath("mypageMainAction.cyg");
		return forward;
	}

}
