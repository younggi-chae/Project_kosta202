package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import action.ActionForward;
import action.indexAction_kjj;
import action.registerFormAction_kjj;
import action.registerSellAction_kjj;

@WebServlet("/kjj/*")
public class Controller_kjj extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public Controller_kjj() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doProcess(request, response);
	}
	
	public void doProcess(HttpServletRequest request, HttpServletResponse response) {
		String fullURI = request.getRequestURI();
		String contextURI = request.getContextPath();
		String uri = fullURI.substring(contextURI.length() + 5);

		System.out.println("contextURI : " + contextURI);
		System.out.println("uri : " + uri);
		
		ActionForward forward = null;
		
		if (uri.equals("indexAction.kjj")) {
			try {
				forward = new indexAction_kjj().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("registerFormAction.kjj")) {
			try {
				forward = new registerFormAction_kjj().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		} else if (uri.equals("registerSellAction.kjj")) {
			try {
				forward = new registerSellAction_kjj().execute(request, response);
			} catch (Exception e) {
				e.printStackTrace();
			}
		}
		
		if (forward != null) {
			if (forward.isRedirect()) {
				try {
					response.sendRedirect(forward.getPath());
				} catch (IOException e) {
					e.printStackTrace();
				}
			} else {
				try {
					request.getRequestDispatcher(forward.getPath()).forward(request, response);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
		}
	}

}
