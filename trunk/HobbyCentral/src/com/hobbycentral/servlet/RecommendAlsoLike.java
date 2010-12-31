package com.hobbycentral.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.*;
import com.hobbycentral.java.DBConnectionBean;
import com.hobbycentral.java.RecommendationBean;

import java.sql.*;
import java.util.ArrayList;

/**
 * Servlet implementation class RecommendAlsoLike
 */
public class RecommendAlsoLike extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static Logger logger = Logger.getLogger(RecommendAlsoLike.class);
	Connection conn = null;
	ResultSet rs = null;
	Statement stmt = null;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RecommendAlsoLike() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException, SQLException {
		// TODO Auto-generated method stub
    	ArrayList<RecommendationBean> recolist = new ArrayList<RecommendationBean>();
		try {
			DBConnectionBean d = new DBConnectionBean();
			conn = d.getDbconn();
			stmt = conn.createStatement();
			String sqlqry = "select id, hobby_name, grpNo from hobbycentral.hobby_charac where grpNo = (select grpNo from hobbycentral.hobby_charac where hobby_name = 'Coin Collection') and hobby_name <> 'Coin Collection'";
			rs = stmt.executeQuery(sqlqry);
			while (rs.next()) {
				RecommendationBean b = new RecommendationBean();
				b.setHobbyId(rs.getInt("id"));
				b.setHobby_name(rs.getString("hobby_name"));
				logger.info(rs.getInt("id") + " " + rs.getString("hobby_name"));
				recolist.add(b);
			}
			
			request.setAttribute("recolist", recolist);
			RequestDispatcher dispatch = getServletContext().getRequestDispatcher("/test.jsp");
			dispatch.include(request, response);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			conn.close();
			rs.close();
			stmt.close();
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
