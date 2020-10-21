package mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import model.Buy;
import model.Search_cyg;
import model.Deal;
import model.Deal_Sell_cyg;


public interface MypageMapper_cyg {
	List<Buy> listBuy(Search_cyg search, RowBounds row);
	int countPage(Search_cyg search);
	
	List<Deal_Sell_cyg> listDeal(Search_cyg search, RowBounds row);
	int countDeal(Search_cyg search);
}

