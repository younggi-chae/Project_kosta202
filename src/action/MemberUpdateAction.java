package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Member;
import service.Service_cyg;

public class MemberUpdateAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();		
				
		service.updateMemberService(request);
		
		forward.setRedirect(true);
		forward.setPath("mypageMainAction.cyg");
		return forward;
	}

}
