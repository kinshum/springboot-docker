package com.ikats.common.redis;

import java.util.UUID;

/**
 * 生成个uuid当做token
 */
public class AutoTokenUtil {
	/**
	 * 生成uuid
	 * @return
	 */
	public static String generationUUID(){
		UUID uuid = UUID.randomUUID();
		return uuid.toString().replaceAll("-", "");
	}

	public static boolean isEmpty(String str){
		if(str!=null&&!str.isEmpty()){
			return true;
		}else{
			return false;
		}
	}

	public static String getSubStr(String str, int num) {
		String result = "";
		int i = 0;
		while(i < num) {
			int lastFirst = str.lastIndexOf('/');
			result = str.substring(lastFirst) + result;
			str = str.substring(0, lastFirst);
			i++;
		}
		return result.substring(1);
	}


}
