package com.daniel.gutierrez.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertieManager {
	
	
	private static Properties loadProperties() throws IOException{
		Properties properties = new Properties();
		InputStream resourceAsStream = PropertieManager.class.getResourceAsStream("/config.properties");
		properties.load(resourceAsStream);
		return properties;
	}
	public static String getValue(String key){
		String value = "";
		try {
			value = (String)loadProperties().get(key);
		} catch (IOException e) {
			e.printStackTrace();
		}
		return value;
	}

}
