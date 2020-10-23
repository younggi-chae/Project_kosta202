package dao;

import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.RowBounds;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.json.simple.JSONArray;

import mapper.Mapper_cyg;
import model.Buy;
import model.Search_cyg;
import model.Sell;
import model.Deal;
import model.Deal_Sell_cyg;
import model.Member;


public class DAO_cyg {
	private static DAO_cyg dao = new DAO_cyg();
	
	public static DAO_cyg getInstance() {
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
	
	//buy 
	public List<Buy> listBuy(Search_cyg search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		List<Buy> list = null;
		
		try {
			list = sqlSession.getMapper(Mapper_cyg.class).listBuy(search, new RowBounds(startRow, 5));		
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
			re = sqlSession.getMapper(Mapper_cyg.class).countPage(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}
	
	//Deal 
	public List<Deal_Sell_cyg> listDeal(Search_cyg search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		List<Deal_Sell_cyg> list = null;
		
		try {
			list = sqlSession.getMapper(Mapper_cyg.class).listDeal(search, new RowBounds(startRow, 9));				
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
			re = sqlSession.getMapper(Mapper_cyg.class).countDeal(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}
	
	public Deal_Sell_cyg detailDeal(int dealNo) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Deal_Sell_cyg deal = null;
		
		try {
			deal = sqlSession.getMapper(Mapper_cyg.class).detailDeal(dealNo);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}		
		return deal;
	}
	
	//Sell
	public List<Sell> listSell(Search_cyg search, int startRow){
		SqlSession sqlSession = getSqlSessionFactory().openSession();		
		List<Sell> list = null;
		
		try {
			list = sqlSession.getMapper(Mapper_cyg.class).listSell(search, new RowBounds(startRow, 9));				
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
		
	public int countSell(Search_cyg search) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = 0;
		
		try {
			re = sqlSession.getMapper(Mapper_cyg.class).countSell(search);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}
	
	
	//Member
	public Member detailMember(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		Member member = null;
		
		try {
			member = sqlSession.getMapper(Mapper_cyg.class).detailMember(id);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return member;			
	}
	
	public int updateMember(Member member) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(Mapper_cyg.class).updateMember(member);
			System.out.println(member);
			if(re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			if(sqlSession != null) {
				sqlSession.close();
			}
		}
		return re;		
	}	
	
	public int deleteMember(String id) {
		SqlSession sqlSession = getSqlSessionFactory().openSession();
		int re = -1;
		
		try {
			re = sqlSession.getMapper(Mapper_cyg.class).deleteMember(id);	
			System.out.println(re);
			if(re > 0) {
				sqlSession.commit();
			} else {
				sqlSession.rollback();
			}
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