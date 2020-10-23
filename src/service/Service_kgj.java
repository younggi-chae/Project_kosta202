package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.DAO_kgj;
import model.Buy;
import model.BuyListModel_kgj;
import model.Category;
import model.Search_kgj;

public class Service_kgj {
	private static Service_kgj service = new Service_kgj();
	private static DAO_kgj dao;
	private static final int PAGE_SIZE = 6;
	
	public static Service_kgj getInstance() {
		dao = DAO_kgj.getInstance();
		return service;
	}
	
	public BuyListModel_kgj listBuyBoardService(HttpServletRequest request)throws Exception{
		request.setCharacterEncoding("utf-8");
		Search_kgj search = new Search_kgj();
		HttpSession session = request.getSession();
		
		//검색할경우
		if(request.getParameter("bigClassifier") != null) {
			session.removeAttribute("search");
			search.setBigClassifier("%"+request.getParameter("bigClassifier")+"%");
			search.setMediumClassifier("%"+request.getParameter("mediumClassifier")+"%");
			search.setKeyword1("%"+request.getParameter("keyword1")+"%");
			search.setKeyword2("%"+request.getParameter("keyword2")+"%");
			search.setKeyword3("%"+request.getParameter("keyword3")+"%");
			
			String price = request.getParameter("price");
			System.out.println(price);
			int minPrice = Integer.parseInt(price.substring(0, price.indexOf('-') - 1));
			int maxPrice = Integer.parseInt(price.substring(price.indexOf('-') + 2));
			System.out.println(minPrice);
			System.out.println(maxPrice);
			search.setMinPrice(minPrice);
			search.setMaxPrice(maxPrice);
			session.setAttribute("search", search);
			System.out.println(search);
		}
		
		//검색 후 페이지를 클릭할 경우
		else if(session.getAttribute("search") != null) {
			search = (Search_kgj)session.getAttribute("search");
		}
		
		//총글갯수
		int totalCount = dao.countBuyBoard(search);
		System.out.println(totalCount);
		
		//총페이지수
		int totalPageCount = totalCount/PAGE_SIZE;
		if(totalCount%PAGE_SIZE > 0) {
			totalPageCount++;
		}
		
		//현재페이지
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		int requestPage = Integer.parseInt(pageNum);//현재페이지
		
		//startPage 공식 = 현재페이지 - (현재페이지 -1) % 5
		int startPage = requestPage - (requestPage - 1) % 5;
		
		//endPage
		int endPage = startPage + 4;
		if(endPage > totalPageCount) {
			endPage = totalPageCount;//엔드페이지가 총페이지수보다 크다면 엔드페이지는 총페이지가 되야한다.
		}
		
		//startRow 공식 = (현재페이지 -1) * 페이지당 글갯수
		int startRow = (requestPage - 1) * PAGE_SIZE;
		
		List<Buy> listBuy = dao.listBuyBoard(search, startRow);
		
		BuyListModel_kgj buyListModel = 
				new BuyListModel_kgj(listBuy, requestPage, totalPageCount, startPage, endPage);

		return buyListModel;
	}
	
	public Buy detailBuyBoardService(int buyNo) {
		return dao.detailBuyBoard(buyNo);
	}
	
	public int insertBuyRegistrationService(HttpServletRequest request)throws Exception {
		request.setCharacterEncoding("utf-8");
		Buy buy = new Buy();
		
		int categoryNo = -1;
		if (request.getParameter("BigClassifier").equals("의류")) {
			if (request.getParameter("MediumClassifier").equals("상의")) {
				categoryNo = 1;
			} else if (request.getParameter("MediumClassifier").equals("하의")) {
				categoryNo = 2;
			} else if (request.getParameter("MediumClassifier").equals("악세사리")) {
				categoryNo = 3;
			}
		} else if (request.getParameter("BigClassifier").equals("가전")) {
			if (request.getParameter("MediumClassifier").equals("냉장고")) {
				categoryNo = 4;
			} else if (request.getParameter("MediumClassifier").equals("에어컨")) {
				categoryNo = 5;
			} else if (request.getParameter("MediumClassifier").equals("세탁기")) {
				categoryNo = 6;
			}
		}
		
		buy.setId("bbc234");
		buy.setTitle(request.getParameter("title"));
		buy.setCategoryNo(categoryNo);
		buy.setKeyword1(request.getParameter("keyword1"));
		buy.setKeyword2(request.getParameter("keyword2"));
		buy.setKeyword3(request.getParameter("keyword3"));
		buy.setType(request.getParameter("type"));
		buy.setRegion(request.getParameter("region"));
		buy.setMinPrice(Integer.parseInt(request.getParameter("minPrice")));
		buy.setMaxPrice(Integer.parseInt(request.getParameter("maxPrice")));
		
		
		return dao.insertBuyRegistration(buy);
	}
	
	
}
