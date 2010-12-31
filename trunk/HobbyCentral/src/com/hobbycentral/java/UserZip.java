package com.hobbycentral.java;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;

import org.apache.log4j.*;
public class UserZip {
	private String zipcode = null;
	private Logger logger = Logger.getLogger(UserZip.class);
	
	public UserZip(String ip) {
		logger.info("Getting user zipcode");
		String url = "http://ipinfodb.com/ip_query.php?ip="+ip+"&timezone=true";
		logger.info(url);
		try {
			BufferedReader resp = new BufferedReader(new InputStreamReader(new URL(url).openStream()));

			StringBuffer sb = new StringBuffer();
			String line = "";
			while ((line = resp.readLine()) != null) {
				sb.append(line);
			}
//			logger.info(sb.toString());
			String zip = sb.substring(sb.indexOf("<ZipPostalCode>")+15, sb.indexOf("</ZipPostalCode>"));
			
			if (zip.isEmpty()) {
				logger.warn("Zipcode could not be resolved. Setting to default");
				zip = "85721";
			}
			logger.info("ZIPCODE = " + zip);
			setZipcode(zip);
		} catch (Exception e) {
			logger.error(e);
			e.printStackTrace();
		}
	}
	public String getZipcode() {
		return zipcode;
	}
	public void setZipcode(String zipcode) {
		this.zipcode = zipcode;
	}
}
