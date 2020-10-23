package mapper;

import java.util.List;

import org.apache.ibatis.session.RowBounds;

import model.Buy;
import model.Search_cyg;
import model.Sell;
import model.Deal;
import model.Deal_Sell_cyg;
import model.Member;


public interface Mapper_cyg {
	List<Buy> listBuy(Search_cyg search, RowBounds row);
	int countPage(Search_cyg search);
	
	List<Deal_Sell_cyg> listDeal(Search_cyg search, RowBounds row);
	int countDeal(Search_cyg search);
	Deal_Sell_cyg detailDeal(int dealNo);
	
	List<Sell> listSell(Search_cyg search, RowBounds row);
	int countSell(Search_cyg search);
	
	Member detailMember(String id);
	int updateMember(Member member);
	int deleteMember(String id);
}

