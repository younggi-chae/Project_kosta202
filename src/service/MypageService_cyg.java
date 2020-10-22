package service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import dao.MypageDAO_cyg;
import model.Buy;

import model.DealListModel_cyg;
import model.Deal_Sell_cyg;

import model.BuyListModel_cyg;
import model.Search_cyg;


public class MypageService_cyg {
	private static MypageService_cyg service = new MypageService_cyg();
	private static MypageDAO_cyg dao;	
	private static final int PAGE_SIZE = 5;
	private static final int PAGE_SIZE2 = 9;
	
	public static MypageService_cyg getInstance() {
		dao = MypageDAO_cyg.getInstance();
		return service;
	}
	
	public BuyListModel_cyg listBuyService(HttpServletRequest request) throws Exception {
		
		request.setCharacterEncoding("utf-8");		
		Search_cyg search = new Search_cyg();
		HttpSession session = request.getSession();
		
		if(request.getParameter("area") != null) {
			session.removeAttribute("search");
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}
		
		else if(session.getAttribute("search") != null) {
			System.out.println(session.getAttribute("search"));
			search = (Search_cyg)session.getAttribute("search");
		}	
		int totalCount = dao.countPage(search);
		int totalPageCount = totalCount / PAGE_SIZE;
		if(totalCount % PAGE_SIZE > 0) {
			totalPageCount++;
		}
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int requestPage = Integer.parseInt(pageNum);
		int startPage = requestPage - (requestPage -1) % 5;
		int endPage = startPage + 4;
		if(endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage - 1) * PAGE_SIZE;	
		
		List<Buy> list = dao.listBuy(search, startRow);
		BuyListModel_cyg listModel = new BuyListModel_cyg(list, requestPage, totalPageCount, startPage, endPage);
		return listModel;
	}
	
	public DealListModel_cyg listDeal(HttpServletRequest request) throws Exception{
		request.setCharacterEncoding("utf-8");
		Search_cyg search = new Search_cyg();
		HttpSession session = request.getSession();
		
		if(request.getParameter("area") != null) {
			session.removeAttribute("search");
			search.setArea(request.getParameterValues("area"));
			search.setSearchKey("%"+request.getParameter("searchKey")+"%");
			session.setAttribute("search", search);
		}
		
		else if(session.getAttribute("search") != null) {
			System.out.println(session.getAttribute("search"));
			search = (Search_cyg)session.getAttribute("search");
		}
		
		int totalCount = dao.countDeal(search);
		int totalPageCount = totalCount / PAGE_SIZE2;
		if(totalCount % PAGE_SIZE2 > 0) {
			totalPageCount++;
		}
		
		String pageNum = request.getParameter("pageNum");
		if(pageNum == null) {
			pageNum = "1";
		}
		
		int requestPage = Integer.parseInt(pageNum);
		int startPage = requestPage - (requestPage -1) % 5;
		int endPage = startPage + 4;
		if(endPage > totalPageCount) {
			endPage = totalPageCount;
		}
		
		int startRow = (requestPage - 1) * PAGE_SIZE2;			
		
		List<Deal_Sell_cyg> list = dao.listDeal(search, startRow);
		DealListModel_cyg listModel = new DealListModel_cyg(list, requestPage, totalPageCount, startPage, endPage);
		return listModel;
	}	
}
	