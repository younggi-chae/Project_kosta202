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
import action.loginAction_jsh;
import action.loginFormAction_jsh;
import action.logoutAction_jsh;
import action.mainAction_jsh;
import action.signupAction_jsh;
import action.signupFormAction_jsh;



/**
 * Servlet implementation class controller_jsh
 */
@WebServlet("/controller_jsh/*")
public class Controller_jsh extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 
    public Controller_jsh() {
        super();
       
    }
	
    public void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    
    	
    	String requestURI = request.getRequestURI();
    	String contextPath = request.getContextPath();  
    	
    	String command = requestURI.substring(contextPath.length()+16);
    	
    	Action action = null;
    	ActionForward forward = null;
    	
    	if(command.equals("loginFormAction.sh")) {
    		action = new loginFormAction_jsh();
    		try {
    			forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("loginAction.sh")) {
    		action = new loginAction_jsh();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("signupFormAction.sh")) {
    		action = new signupFormAction_jsh();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("signupAction.sh")) {
    		action = new signupAction_jsh();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("mainAction.sh")) {
    		action = new mainAction_jsh();
    		try {
				forward = action.execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
    	}else if(command.equals("logoutAction.sh")) {
    		action = new logoutAction_jsh();
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
>>>>>>> refs/heads/master
