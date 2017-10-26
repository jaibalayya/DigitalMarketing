package com.digitaladd.sql;

import java.util.ResourceBundle;

public class SqlMappings {
	final static ResourceBundle rb = ResourceBundle.getBundle("resources.SQLMappings");

	public static String get(String key) {
	    String value = "";
		try {
			boolean flag = rb.containsKey(key);

			if (flag) {
				value = rb.getString(key);
			}
		} catch (Exception e) {
			System.out.println("exception-e-" + e);
		}
		return value;
	}
}
