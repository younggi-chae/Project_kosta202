package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Buy;
import model.BuyListModel_kgj;
import service.Service_kgj;

public class ListBuyBoardAction_kgj implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_kgj service = Service_kgj.getInstance();
		
		BuyListModel_kgj buyListModel = service.listBuyBoardService(request);
		request.setAttribute("buyListModel", buyListModel);
		
		forward.setRedirect(false);
		forward.setPath("/BuyBoard_kgj.jsp");
		
		return forward;
	}

}