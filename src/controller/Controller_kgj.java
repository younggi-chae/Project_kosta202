package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.Action;
import action.ActionForward;
import action.IndexAction_kgj;
import action.ListBuyBoardAction_kgj;
import action.ListBuyBoardDetailAction_kgj;


@WebServlet("/Controller_kgj/*")
public class Controller_kgj extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller_kgj() {
        super();
    }
    
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();
    	String command = requestURI.substring(contextPath.length()+16);
    	System.out.println(command);
    	request.setCharacterEncoding("utf-8");
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("index_kgj.kgj")) {
    		action = new IndexAction_kgj();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("listBuyBoard.kgj")) {
    		action = new ListBuyBoardAction_kgj();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("listBuyBoardDetail.kgj")) {
    		action = new ListBuyBoardDetailAction_kgj();
    		
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}
    	
    	
    	if(forward != null) {
    		if(forward.isRedirect()) {
    			response.sendRedirect(forward.getPath());
    		}else {
    			RequestDispatcher dispacher = 
    					request.getRequestDispatcher(forward.getPath());
    			dispacher.forward(request, response);
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
