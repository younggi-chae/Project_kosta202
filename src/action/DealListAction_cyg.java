package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.DealListModel_cyg;
import service.MypageService_cyg;

public class DealListAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		MypageService_cyg service = MypageService_cyg.getInstance();
		
		DealListModel_cyg listModel = service.listDeal(request);
		request.setAttribute("listModel", listModel);		
		forward.setRedirect(false);
		forward.setPath("/myPage-deal.jsp");
		return forward;
	}
}
