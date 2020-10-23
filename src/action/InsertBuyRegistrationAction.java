package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.Service_kgj;

public class InsertBuyRegistrationAction implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Service_kgj service = Service_kgj.getInstance();
		service.insertBuyRegistrationService(request);
		
		return new ActionForward(false, "index_kgj.kgj");
	}

}
