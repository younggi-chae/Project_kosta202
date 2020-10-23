package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service_kjj;

public class registerFormAction_kjj implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		if (request.getSession().getAttribute("id") != null) {
			return new ActionForward(true, "../registerSell_kjj.jsp");
		} else {
			return new ActionForward(true, "indexAction.kjj");
		}
	}
	
}
