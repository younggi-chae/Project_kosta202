package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.MypageMainAction_cyg;
import action.SellListAction_cyg;
import action.Action;
import action.ActionForward;
import action.BuyListAction_cyg;
import action.DealDetailAction_cyg;
import action.DealListAction_cyg;
import action.IndexAction_cyg;
import action.MemberDeleteAction;
import action.MemberDetailAction_cyg;
import action.MemberUpdateAction;

@WebServlet("/Mypage/*")
public class Controller_cyg extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller_cyg() {
        super();        
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length() + 8);
    	System.out.println(requestURI);
    	System.out.println(contextPath);
    	System.out.println(command);
    	
    	ActionForward forward = null;
    	Action action = null;
    	
    	if(command.equals("buyListAction.cyg")) {
    		action = new BuyListAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("mypageMainAction.cyg")) {
    		action = new MypageMainAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			} 
    	}  else if(command.equals("dealListAction.cyg")) {
    		action = new DealListAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("memberDetailAction.cyg")) {
    		action = new MemberDetailAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("sellListAction.cyg")) {
    		action = new SellListAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("memberUpdateAction.cyg")) {
    		action = new MemberUpdateAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("memberDeleteAction.cyg")) {
    		action = new MemberDeleteAction();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("indexAction.cyg")) {
    		action = new IndexAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	} else if(command.equals("dealDetailAction.cyg")) {
    		action = new DealDetailAction_cyg();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    		
    	if(forward != null) {
    		if(forward.isRedirect()) {
    			response.sendRedirect(forward.getPath());
    		} else {
    			RequestDispatcher dispatcher = request.getRequestDispatcher(forward.getPath());
    			dispatcher.forward(request, response);
    		}
    	}
    }
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);	
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
}