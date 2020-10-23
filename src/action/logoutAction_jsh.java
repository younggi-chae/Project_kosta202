package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Service_jsh;

public class logoutAction_jsh implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();

		HttpSession session = request.getSession();
		session.removeAttribute("id");
		session.invalidate();

		forward.setRedirect(true);
		forward.setPath("mainAction.sh");
		
		
		return forward;
	}

}
