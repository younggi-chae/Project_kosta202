package action;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;

import model.Deal_Sell_cyg;
import model.Member;
import service.Service_cyg;

public class DealDetailAction_cyg implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		ActionForward forward = new ActionForward();
		Service_cyg service = Service_cyg.getInstance();
		
		Deal_Sell_cyg deal = new Deal_Sell_cyg();
		
		int dealNo = Integer.parseInt(request.getParameter("dealNo"));
		deal = service.detailDealService(dealNo);	
		request.setAttribute("deal", deal);
		
//		HashMap<String, Object> map = new HashMap<String, Object>();
//		map.put("deal", deal);
//		JSONObject jsonObject = new JSONObject();
//		jsonObject.putAll(map);
//		System.out.println(jsonObject);
		
		System.out.println(deal);		
		forward.setRedirect(false);
		forward.setPath("/myPage-detail.jsp");
		return forward;
	}

}
