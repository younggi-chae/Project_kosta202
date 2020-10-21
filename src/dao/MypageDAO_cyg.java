package dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import mapper.MypageMapper_cyg;
import model.Buy;
import model.Search_cyg;
import model.Deal;
import model.Deal_Sell_cyg;


public class MypageDAO_cyg {
	private static MypageDAO_cyg dao = new MypageDAO_cyg();
	
	public static MypageDAO_cyg getInstance() {
		return dao;
	}
	
	public SqlSessionFactory getSqlSessionFactory() {
		String resource = "mybatis-config_cyg.xml";
		InputStream in = null;
		try {
			in = Resources.getResourceAsStream(resource);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new SqlSessionFactoryBuilder().build(in);	
	}
	
	//buy (구매등록 리스트)
	public List<Buy> listBuy(Search_cyg search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		List<Buy> list = null;
		
		try {
			list = sqlSession.getMapper(MypageMapper_cyg.class).listBuy(search, new RowBounds(startRow, 5));		
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}		
		return list;	
	}	
	
	public int countPage(Search_cyg search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		
		try {
			re = sqlSession.getMapper(MypageMapper_cyg.class).countPage(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}
	
	//Deal (거래내역 리스트)
	public List<Deal_Sell_cyg> listDeal(Search_cyg search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		List<Deal_Sell_cyg> list = null;
		
		try {
			list = sqlSession.getMapper(MypageMapper_cyg.class).listDeal(search, new RowBounds(startRow, 9));				
			System.out.println(list);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}		
		return list;	
	}
	
	public int countDeal(Search_cyg search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		
		try {
			re = sqlSession.getMapper(MypageMapper_cyg.class).countDeal(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}
}