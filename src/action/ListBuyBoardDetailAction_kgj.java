package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Buy;
import service.Service_kgj;

public class ListBuyBoardDetailAction_kgj implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_kgj service = Service_kgj.getInstance();
		
		int buyNo = Integer.parseInt(request.getParameter("buyNo"));
		Buy buy = service.detailBuyBoardService(buyNo);
		request.setAttribute("buy", buy);
		
		System.out.println(buy);
		
		forward.setRedirect(false);
		forward.setPath("/BuyBoardDetail_kgj.jsp");
		
		return forward;
	}

}
