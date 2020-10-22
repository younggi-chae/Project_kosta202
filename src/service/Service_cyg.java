package service;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import dao.DAO_cyg;
import model.Buy;

import model.DealListModel_cyg;
import model.Deal_Sell_cyg;

import model.Member;
import model.BuyListModel_cyg;
import model.Search_cyg;
import model.Sell;
import model.SellListModel_cyg;


public class Service_cyg {
	private static Service_cyg service = new Service_cyg();
	private static DAO_cyg dao;	
	private static final int PAGE_SIZE = 5;
	private static final int PAGE_SIZE2 = 9;
	
	public static Service_cyg getInstance() {
		dao = DAO_cyg.getInstance();
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
	
	public DealListModel_cyg listDealService(HttpServletRequest request) throws Exception{
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
	
	public SellListModel_cyg listSellService(HttpServletRequest request) throws Exception{
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
		
		int totalCount = dao.countSell(search);
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
		
		List<Sell> list = dao.listSell(search, startRow);
		SellListModel_cyg listModel = new SellListModel_cyg(list, requestPage, totalPageCount, startPage, endPage);
		return listModel;
	}	
	
	public int updateMemberService(HttpServletRequest request) throws Exception {		
		request.setCharacterEncoding("utf-8");
		
		String uploadPath = "C:\\Users\\82109\\Project-KOSTA\\Architecture-kosta202\\WebContent\\resources\\img\\upload_cyg";
		int size = 20 * 1024 * 1024;
		
		MultipartRequest multi = 
				new MultipartRequest(request, uploadPath, size, 
						"utf-8", new DefaultFileRenamePolicy());
		
		Member member = new Member();
		member.setId(multi.getParameter("id"));		
		member.setName(multi.getParameter("name"));
		member.setPassword(multi.getParameter("password"));
		member.setEmail(multi.getParameter("email"));
		member.setPhoneNo(multi.getParameter("phoneno"));
		member.setAddress(multi.getParameter("address"));
		member.setIntroduction(multi.getParameter("introduction"));
		member.setPicture("");
		
		if(multi.getFilesystemName("picture") != null) {
			String picture = (String)multi.getFilesystemName("picture");
			member.setPicture(picture);
		}		
		return dao.updateMember(member);
	}
	
	public Member detailMemberService(String id) throws Exception {
		return dao.detailMember(id);
	}	
	
	public int deleteMemberService(String id) throws Exception {
		return dao.deleteMember(id);
	}
}
	