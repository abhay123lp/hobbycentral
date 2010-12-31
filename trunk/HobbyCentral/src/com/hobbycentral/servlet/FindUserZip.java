package com.hobbycentral.servlet;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

/**
 * Servlet implementation class FindUserZip
 */
public class FindUserZip extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(FindUserZip.class);
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FindUserZip() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		// TODO Auto-generated method stub
		String userIP = request.getRemoteAddr();
		String url = "http://ipinfodb.com/ip_query.php?ip="+userIP+"&timezone=true";
		logger.info(url);
		String dispatchUrl = "/maps.jsp";
		try {
			BufferedReader resp = new BufferedReader(new InputStreamReader(new URL(url).openStream()));

			StringBuffer sb = new StringBuffer();
			String line = "";
			while ((line = resp.readLine()) != null) {
				sb.append(line);
			}
//			logger.info(sb.toString());
			String zipcode = sb.substring(sb.indexOf("<ZipPostalCode>")+15, sb.indexOf("</ZipPostalCode>"));
			logger.info("ZIPCODE = " + zipcode);
			if (zipcode.isEmpty()) {
				logger.warn("Zipcode could not be resolved. Setting to default");
				zipcode = "85721";
			}
			request.setAttribute("zip", zipcode);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			dispatcher.include(request, response);
		} catch (Exception e) {
			logger.error(e);
		}
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
