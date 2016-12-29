package com.gxa.util;

import java.text.SimpleDateFormat;
import java.util.Calendar;

public class DateUtil {
	public static String getTimeDetail(){
		Calendar cal=Calendar.getInstance();
		SimpleDateFormat sd=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		return sd.format(cal.getTime());
	}
	
	public static String getYear(){
		Calendar cal=Calendar.getInstance();
		SimpleDateFormat sd=new SimpleDateFormat("yyyy");
		return sd.format(cal.getTime());
	}
}
