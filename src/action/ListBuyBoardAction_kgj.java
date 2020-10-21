package action;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Buy;
import service.Service_kgj;

public class ListBuyBoardAction_kgj implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_kgj service = Service_kgj.getInstance();
		
		List<Buy> listBuy = service.listBuyBoardService();
		request.setAttribute("listBuy", listBuy);
		
		forward.setRedirect(false);
		forward.setPath("/BuyBoard_kgj.jsp");
		
		return forward;
	}

}
