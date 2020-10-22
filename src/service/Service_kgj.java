package service;

import java.util.List;

import dao.DAO_kgj;
import model.Buy;

public class Service_kgj {
	private static Service_kgj service = new Service_kgj();
	private static DAO_kgj dao;
	
	public static Service_kgj getInstance() {
		dao = DAO_kgj.getInstance();
		return service;
	}
	
	public List<Buy> listBuyBoardService(){
		return dao.listBuyBoard();
	}
	
	public Buy detailBuyBoardService(int buyNo) {
		return dao.detailBuyBoard(buyNo);
	}
	
}
