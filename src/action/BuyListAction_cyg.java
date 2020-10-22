package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.BuyListModel_cyg;
import model.Search_cyg;
import service.MypageService_cyg;

public class BuyListAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		MypageService_cyg service = MypageService_cyg.getInstance();
		
		BuyListModel_cyg listModel = service.listBuyService(request);
		request.setAttribute("listModel", listModel);		
		forward.setRedirect(false);
		forward.setPath("/myPage-purchase.jsp");
		return forward;
	}
	
}