package action;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import service.Service_jsh;

public class idCheckAction_jsh implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_jsh service = Service_jsh.getInstance();
		
		Cookie cookies[] = request.getCookies();
		String chk_id=cookies[1].getValue();
		
		
		System.out.println(chk_id);
		request.setAttribute("id", chk_id);
		
	
		int count = service.chk_idService(chk_id);
		
		
		System.out.println(count);
		if(count==1) {
			cookies[1].setMaxAge(0);
			forward.setRedirect(false);
			forward.setPath("/no_jsh.jsp");
			
			
		}else {
			cookies[1].setMaxAge(0);
			forward.setRedirect(false);
			forward.setPath("/yes_jsh.jsp");
			
		}
		
		
		return forward;
	}

}
