package com.hobbycentral.servlet;

import java.sql.*;
import java.util.*;
import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;
import com.hobbycentral.java.DBConnectionBean;
/**
 * Servlet implementation class RedirectToCategory
 */
public class RedirectToCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(RedirectToCategory.class);
	Connection conn = null;
	Statement stmt = null;
	ResultSet rs = null;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RedirectToCategory() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException, SQLException {
    	try {
			DBConnectionBean b = new DBConnectionBean();
			conn = b.getDbconn();
			String categoryname = request.getParameter("categoryname");
			String sqlqry = "SELECT hobby_name FROM hobby_data WHERE category_name = '" + categoryname + "'";
//			logger.info(sqlqry);
			stmt = conn.createStatement();
			rs = stmt.executeQuery(sqlqry);
			ArrayList<String> hobbynamelist = new ArrayList<String>();
			int rowCount = 0;
			while (rs.next()) {
				rowCount++;
				hobbynamelist.add(rs.getString("hobby_name"));
			}
			logger.info("rowCount = " +rowCount);
			logger.info("Sending hobby name list to next page");
			request.setAttribute("hobbynamelist", hobbynamelist);
			request.setAttribute("category", categoryname);
			
			request.setAttribute("img", getCategoryImg(categoryname));
			request.setAttribute("description", getCategoryDesc(categoryname));
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/hobby/categorylist.jsp");
			dispatcher.include(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		} finally {
			conn.close();
			stmt.close();
			rs.close();
		}
    }
    
    protected String getCategoryImg(String c) throws SQLException{
    	stmt = null;
    	rs = null;
    	stmt = conn.createStatement();
    	rs = stmt.executeQuery("SELECT imgpath FROM categorylist WHERE category_name = '" + c + "'");
    	rs.first();
    	return rs.getString("imgpath");
    }
    
    protected String getCategoryDesc(String c) throws SQLException{
    	stmt = null;
    	rs = null;
    	stmt = conn.createStatement();
    	rs = stmt.executeQuery("SELECT description FROM categorylist WHERE category_name = '" + c + "'");
    	rs.first();
    	return rs.getString("description");
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processData(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try {
			processData(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		}
	}

}
