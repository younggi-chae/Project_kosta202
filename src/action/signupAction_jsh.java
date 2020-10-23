package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service_jsh;




public class signupAction_jsh implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_jsh service = Service_jsh.getInstance();
		
		service.insertMemberService(request);


		forward.setRedirect(false);
		forward.setPath("/detailInfoForm.jsp");
		
		return forward;
	}

}
