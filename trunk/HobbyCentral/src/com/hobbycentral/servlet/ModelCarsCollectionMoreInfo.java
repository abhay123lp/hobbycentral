package com.hobbycentral.servlet;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hobbycentral.java.CollectingBean;

/**
 * Servlet implementation class ModelCarsCollectionMoreInfo
 */
public class ModelCarsCollectionMoreInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ModelCarsCollectionMoreInfo() {
        super();
        // TODO Auto-generated constructor stub
    }

    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	try {
    		String dispatchUrl = "/hobby/collecting/modelcarsmoreinfo.jsp";
    		String hobbyname = request.getParameter("hobby");
//    		System.out.println(hobbyname);
			Connection conn = null;
			Class.forName("com.mysql.jdbc.Driver");
			String userid = getServletContext().getInitParameter("DBUser");
			String passwd = getServletContext().getInitParameter("DBPasswd");
			String dbUrl = "jdbc:mysql://localhost:3306/hobbycentral";
//			String dbUrl = "jdbc:mysql://192.168.1.104:3306/hobbycentral";
			conn = DriverManager.getConnection(dbUrl, userid, passwd);
			String sql = "SELECT * FROM collecting WHERE LOWER(hobby_name) = LOWER('" + hobbyname + "')";
			Statement stmt = conn.createStatement();
			ResultSet rs = stmt.executeQuery(sql);
			
			CollectingBean collBean = new CollectingBean();
			while(rs.next()) {
				collBean.setCollectingId(rs.getInt("Collecting_Id"));
				collBean.setHobbyCategory(rs.getString("Hobby_Category_Name"));
				collBean.setHobbyName(rs.getString("Hobby_Name"));
				collBean.setIntro1(rs.getString("Introduction1"));
				collBean.setIntro2(rs.getString("Introduction2"));
				collBean.setIntro3(rs.getString("Introduction3"));
				collBean.setIntro4(rs.getString("Introduction4"));
				collBean.setWhere1(rs.getString("Where_to_find1"));
				collBean.setWhere2(rs.getString("Where_to_find2"));
				collBean.setWhere3(rs.getString("Where_to_find3"));
				collBean.setWhere4(rs.getString("Where_to_find4"));
				collBean.setStorage1(rs.getString("Storage1"));
				collBean.setStorage2(rs.getString("Storage2"));
				collBean.setStorage3(rs.getString("Storage3"));
				collBean.setStorage4(rs.getString("Storage4"));
			}
			request.setAttribute("resultBean", collBean);
			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(dispatchUrl);
			dispatcher.include(request, response);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (Exception e) {
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
