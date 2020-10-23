package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import service.Service_jsh;

public class detailInfoFormAction_jsh implements Action {

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
