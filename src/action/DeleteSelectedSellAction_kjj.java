package action;

import java.util.Arrays;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.SelectedSellNo;
import service.Service_kjj;

public class DeleteSelectedSellAction_kjj implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		System.out.println(request.getParameter("list"));
		String str = request.getParameter("list");
		
		SelectedSellNo selectedSellNo = new SelectedSellNo();
		selectedSellNo.setList(Arrays.asList(str.split(",")));
		
		System.out.println(selectedSellNo.getList());
		
		Service_kjj service = Service_kjj.getInstance();
		service.deleteSelectedSell(selectedSellNo);
		
		return new ActionForward(true, "../Mypage/sellListAction.cyg");
	}
	
}
