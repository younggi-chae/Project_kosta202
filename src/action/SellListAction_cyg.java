package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SellListModel_cyg;
import service.Service_cyg;

public class SellListAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();
		
		SellListModel_cyg listModel = service.listSellService(request);
		request.setAttribute("listModel", listModel);		
		forward.setRedirect(false);
		forward.setPath("/myPage-estimate.jsp");
		return forward;
		
	}

}
