package com.hobbycentral.servlet;

import java.io.IOException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DatabaseConnection
 */
public class DatabaseConnection extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatabaseConnection() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    /**
     * Method to perform processing
     */
    protected void processData(HttpServletRequest request, HttpServletResponse response) {
    	try {
    		String dispatchUrl = "/databasetest.jsp";
			Connection conn = null;
			String state = null;
			Class.forName("com.mysql.jdbc.Driver");
			ServletContext context = getServletContext();
			String userid = context.getInitParameter("DBUser");
			String passwd = context.getInitParameter("DBPasswd");
//			String url = "jdbc:mysql://192.168.1.104:3306/hobbycentral";
			String url = "jdbc:mysql://localhost:3306/hobbycentral";
//			System.out.println("conn = DriverManager.getConnection(" + url + "," + userid + "," + passwd + ")");
			conn = DriverManager.getConnection(url, userid, passwd);
			System.out.println("Connection successful");
			if (!conn.isClosed())
				state = "open";
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			request.setAttribute("state", state);
			dispatcher.include(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ServletException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
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
