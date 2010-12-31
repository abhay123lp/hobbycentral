package com.hobbycentral.servlet;

import java.io.IOException;
import org.apache.log4j.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Redirect
 */
public class Redirect extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(Redirect.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Redirect() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
    	String ip = request.getRemoteAddr();
    	logger.info("Processing redirect request from IP :" + ip);
    	String url = "/" + request.getParameter("url") + ".jsp";
//    	String dispatchUrl = getServletContext().getContextPath() + "/"+ url;
    	logger.info(url);
//    	System.out.println(url);
    	RequestDispatcher dispatch = getServletContext().getRequestDispatcher(url);
    	dispatch.include(request, response);
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processData(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		processData(request, response);
	}

}
