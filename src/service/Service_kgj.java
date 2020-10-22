package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.DAO_kgj;
import model.Buy;
import model.BuyListModel_kgj;
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
			search.setBigClassifier(request.getParameter("bigClassifier"));
			search.setMediumClassifier(request.getParameter("mediumClassifier"));
			search.setKeyword1(request.getParameter("keyword1"));
			search.setKeyword2(request.getParameter("keyword2"));
			search.setKeyword3(request.getParameter("keyword3"));
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
	
}
