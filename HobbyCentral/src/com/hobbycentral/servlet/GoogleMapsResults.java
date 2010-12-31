package com.hobbycentral.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;

/**
 * Servlet implementation class GoogleMapsResults
 */
public class GoogleMapsResults extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(GoogleMapsResults.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public GoogleMapsResults() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException  {
    	String zip = request.getParameter("zip");
    	String searchQuery = request.getParameter("searchbox");
    	logger.info("Search query: " + searchQuery);
    	logger.info("Zip code: " + zip);
    	String dispatchUrl = "/maps.jsp";
    	String qry = searchQuery + " near " + zip;
    	logger.info(qry);
    	RequestDispatcher dispatch = getServletContext().getRequestDispatcher(dispatchUrl);
    	request.setAttribute("qry", qry);
    	logger.info("Processed, passing to " + dispatchUrl);
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
