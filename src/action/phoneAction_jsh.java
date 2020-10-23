package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.Member;


public class phoneAction_jsh implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		//http://localhost:8081/Architecture-kosta202/controller_jsh/phoneAction_jsh.sh?phoneNo=123
	
		String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();  
    	//String phoneNo = requestURI.substring(requestURI.indexOf("="+1));
    	String phoneNo = "¾È³ç";
    	
    	
		/*
		 * HttpSession session = request.getSession();
		 * //session.removeAttribute("phoneNo");
		 * 
		 * session.setAttribute("phoneNo", phoneNo);
		 */
    	
    	



		forward.setRedirect(false);
		forward.setPath("/phone.jsp");
		
		return forward;
	}

}

