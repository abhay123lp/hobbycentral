package com.hobbycentral.servlet;

import java.io.*;
import java.net.*;
import java.util.ArrayList;
import java.util.List;
import com.hobbycentral.java.EbayItemBean;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.jdom.Document;
import org.jdom.JDOMException;
import org.jdom.input.SAXBuilder;
import org.jdom.xpath.XPath;
import com.hobbycentral.java.UserZip;
/**
 * Servlet implementation class EbayTest
 */
public class Ebay extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Ebay() {
        super();
        // TODO Auto-generated constructor stub
    }
    
    protected void processData(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
    	String errString = null;
    	ArrayList<EbayItemBean> ebayItemList = new ArrayList<EbayItemBean>();
    	try {
    		String key = getServletContext().getInitParameter("EBayAPIKey");
    		String searchQueryTemp = request.getParameter("qry");
    		String searchQuery = searchQueryTemp.replaceAll("%20", " ");
    		
    		UserZip u = new UserZip(request.getRemoteAddr());
    		String zip = u.getZipcode();
    		
    		StringBuffer SB = new StringBuffer();
    		SB.append("http://svcs.ebay.com/services/search/FindingService/v1?OPERATION-NAME=findItemsByKeywords");
    		SB.append("&SERVICE-VERSION=1.0.0");
    		SB.append("&GLOBAL-ID=EBAY-US");
    		SB.append("&SECURITY-APPNAME="+key);
    		SB.append("&RESPONSE-DATA-FORMAT=XML");
    		SB.append("&REST-PAYLOAD=TRUE");
    		SB.append("&keywords="+ URLEncoder.encode(searchQuery, "UTF-8"));	   
    		SB.append("&buyerPostalCode="+zip);	   
    		SB.append("&itemFilter.name=MaxDistance");	   
    		SB.append("&itemFilter.value=25"); 			   
    		
			String urlString = SB.toString();
			System.out.println(urlString);
			//Open a connection with Ebay
			URL url = new URL(urlString);
			URLConnection con = url.openConnection();
			con.connect();
			
			//Read data from Ebay
			BufferedReader webReader = new BufferedReader(new InputStreamReader(con.getInputStream()));
			String line = "", text = "";
			while ((line = webReader.readLine()) != null)
			text += line;
			
			int totalItemCount = Integer.parseInt(text.substring(text.indexOf("<totalEntries>")+14,text.indexOf("</totalEntries>")));
			int pageItemCount = Integer.parseInt(text.substring(text.indexOf("<entriesPerPage>")+16,text.indexOf("</entriesPerPage>")));
			int numberofitems;
			if (totalItemCount > pageItemCount)
				numberofitems = pageItemCount;
			else
				numberofitems = totalItemCount;
			System.out.println(text.toString());
			StringBuffer xmltext= new StringBuffer();
				
			//System.out.println("xmltext: " + xmltext.toString());
			if(numberofitems > 0) {
				xmltext.append(text.substring(text.indexOf("<item>"),text.lastIndexOf("</item>")+7));
				for(int i=0;i<numberofitems;i++)
				{
					System.out.println(i);
					StringBuffer tempitem=new StringBuffer(xmltext.substring(xmltext.indexOf("<item>")+6,xmltext.indexOf("</item>")));
					
					System.out.println("tempitem: "+ tempitem.toString());
					
					EbayItemBean ebean = new EbayItemBean();
					if(tempitem.indexOf("<itemId>") != -1) {
						ebean.setItemId(tempitem.substring(tempitem.indexOf("<itemId>")+8, tempitem.indexOf("</itemId>")));
					}
					if(tempitem.indexOf("<title>") != -1) {
					ebean.setTitle(tempitem.substring(tempitem.indexOf("<title>")+7, tempitem.indexOf("</title>")));
					}
					if(tempitem.indexOf("<categoryName>") != -1) {
					ebean.setCategoryName(tempitem.substring(tempitem.indexOf("<categoryName>")+14, tempitem.indexOf("</categoryName>")));
					}
					if(tempitem.indexOf("<galleryURL>") != -1) {
					ebean.setGalleryURL(tempitem.substring(tempitem.indexOf("<galleryURL>")+12, tempitem.indexOf("</galleryURL>")));
					}
					if(tempitem.indexOf("<viewItemURL>") != -1) {
					ebean.setViewItemURL(tempitem.substring(tempitem.indexOf("<viewItemURL>")+13, tempitem.indexOf("</viewItemURL>")));
					}
					if(tempitem.indexOf("<paymentMethod>") != -1) {
					ebean.setPaymentMethod(tempitem.substring(tempitem.indexOf("<paymentMethod>")+15, tempitem.indexOf("</paymentMethod>")));
					}
					if(tempitem.indexOf("<postalCode>") != -1) {
					ebean.setPostalCode(tempitem.substring(tempitem.indexOf("<postalCode>")+12, tempitem.indexOf("</postalCode>")));
					}
					if(tempitem.indexOf("<location>") != -1) {
					ebean.setLocation(tempitem.substring(tempitem.indexOf("<location>")+10, tempitem.indexOf("</location>")));
					}
					if(tempitem.indexOf("<country>") != -1) {
					ebean.setCountry(tempitem.substring(tempitem.indexOf("<country>")+9, tempitem.indexOf("</country>")));
					}
					if(tempitem.indexOf("<convertedCurrentPrice") != -1) {
					ebean.setConvertedCurrentPrice(tempitem.substring(tempitem.indexOf("<convertedCurrentPrice")+40, tempitem.indexOf("</convertedCurrentPrice>")));
					}
					if(tempitem.indexOf("<sellingState>") != -1) {
					ebean.setSellingState(tempitem.substring(tempitem.indexOf("<sellingState>")+14, tempitem.indexOf("</sellingState>")));
					}
					ebean.setListingType(tempitem.substring(tempitem.indexOf("<listingType>")+13, tempitem.indexOf("</listingType>")));
					if(tempitem.indexOf("<conditionDisplayName>") != -1) {
						ebean.setConditionDisplayName(tempitem.substring(tempitem.indexOf("<conditionDisplayName>")+22, tempitem.indexOf("</conditionDisplayName>")));
					}
					
	//				System.out.println(ebean.getConvertedCurrentPrice());
					
					ebayItemList.add(ebean);
					
					xmltext.delete(xmltext.indexOf("<item>"),xmltext.indexOf("</item>")+7);
				}
				
				request.setAttribute("numberofitems",numberofitems);
				request.setAttribute("ebayItemList", ebayItemList);
			} else {
				errString = "No results found";
				request.setAttribute("err", errString);
			}
			RequestDispatcher d=getServletContext().getRequestDispatcher("/ebayresults.jsp");
			d.include(request, response);
			//System.out.println("xmltext after removing first item: " +xmltext.toString());
		
			
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
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
