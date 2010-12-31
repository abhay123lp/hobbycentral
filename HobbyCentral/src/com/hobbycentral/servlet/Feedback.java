package com.hobbycentral.servlet;

import java.io.IOException;
import java.sql.*;

import org.apache.log4j.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Feedback
 */
public class Feedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(Feedback.class);
	Connection conn = null;
	PreparedStatement pstmt = null;
	String name = null;
	String email = null;
	String comment = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Feedback() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
    	try {
			String dispatchUrl = "/feedback.jsp";
			name = request.getParameter("txtName");
			email = request.getParameter("txtEmail");
			comment = request.getParameter("txtComment");
			
			if(!insertComment()) {
				logger.error("Error. Could not insert comment");
				request.setAttribute("status", "fail");
			} else {
				request.setAttribute("status", "success");
			}
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			dispatcher.include(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		} finally {
			conn.close();
			pstmt.close();
		}
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
			e.printStackTrace();
		}
	}
	
	protected boolean insertComment() throws SQLException{
		try {
			String dburl = getServletContext().getInitParameter("DBUrl");
			String dbuser = getServletContext().getInitParameter("DBUser");
			String dbpasswd = getServletContext().getInitParameter("DBPasswd");
			Class.forName("com.mysql.jdbc.Driver");
			conn = DriverManager.getConnection(dburl, dbuser, dbpasswd);
			String sqlqry = "INSERT INTO feedback (name, email, feedback) VALUES (?,?,?)";
			pstmt = conn.prepareStatement(sqlqry);
			pstmt.setString(1,name);
			pstmt.setString(2, email);
			pstmt.setString(3, comment);
			if (pstmt.executeUpdate() > 0)
				return true;
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			logger.error(e);
			e.printStackTrace();
		} finally {
			conn.close();
			pstmt.close();
		}
		return false;
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
			e.printStackTrace();
		}
	}

}
