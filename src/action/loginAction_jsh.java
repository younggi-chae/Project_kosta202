package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Service_jsh;

public class loginAction_jsh implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_jsh service = Service_jsh.getInstance();
	
		
		
		
		int loginnum = service.loginService(request);
		
		if(loginnum==1) {
			forward.setRedirect(true);
			forward.setPath("mainAction.sh");
		}else {
			
			forward.setRedirect(true);
			forward.setPath("loginFormAction.sh");
		}
		

		
		return forward;
	}

}
