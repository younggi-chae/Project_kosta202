package action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Sell;
import service.Service_kjj;

public class registerSellAction_kjj implements Action{

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		Service_kjj service = Service_kjj.getInstance();
		
		Sell sell = new Sell();
		sell.setId("testID");
		sell.setItemName(request.getParameter("ItemName"));
		sell.setKeyword1(request.getParameter("Keyword1"));
		sell.setKeyword2(request.getParameter("Keyword2"));
		sell.setKeyword3(request.getParameter("Keyword3"));
		sell.setType(request.getParameter("Type"));
		sell.setRegion(request.getParameter("Region"));
		sell.setItemCondition(request.getParameter("ItemCondition"));
		sell.setPrice(Integer.parseInt(request.getParameter("Price")));
		
		int categoryNo = -1;
		if (request.getParameter("BigClassifier").equals("�쓽瑜�")) {
			if (request.getParameter("MediumClassifier").equals("�긽�쓽")) {
				categoryNo = 1;
			} else if (request.getParameter("MediumClassifier").equals("�븯�쓽")) {
				categoryNo = 2;
			} else if (request.getParameter("MediumClassifier").equals("�븙�꽭�궗由�")) {
				categoryNo = 3;
			}
		} else if (request.getParameter("BigClassifier").equals("媛��쟾")) {
			if (request.getParameter("MediumClassifier").equals("�깋�옣怨�")) {
				categoryNo = 4;
			} else if (request.getParameter("MediumClassifier").equals("�뿉�뼱而�")) {
				categoryNo = 5;
			} else if (request.getParameter("MediumClassifier").equals("�꽭�긽湲�")) {
				categoryNo = 6;
			}
		}
		sell.setCategoryNo(categoryNo);
		
		service.registerSell(sell);
		
		return new ActionForward(true, "indexAction.kjj");
	}
	
}
