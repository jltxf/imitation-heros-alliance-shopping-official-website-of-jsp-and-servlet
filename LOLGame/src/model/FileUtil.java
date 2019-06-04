package model;

import java.text.SimpleDateFormat;

public class FileUtil {
	public static String getNewFileName(String fileExt){
    	/*
    	下面代码用来生成一个新的文件名，用日期时间和随机数字作为文件名，
    	用文件原来的扩展名作为新文件的扩展名，以此保证上传的文件不会名称重复
    	*/
     	
    	 //获取当前日期时间,使用SimpleDateFormat对当前日期时间进行格式化，得到15位字符串
    	 java.util.Date now = new java.util.Date();  
       	 SimpleDateFormat sdf = new SimpleDateFormat("yyMMddHHmmssSSS");
    	String fileName = sdf.format(now);
    	 
    	 //用随机数和StringBuffer构造一个四位的数字字符串
    	 int rnd = (int) Math.round(Math.random() * 10000);//得到0-9999的随机数
    	 StringBuffer s = new StringBuffer("0000").append(rnd);//在随机数前面填充四个零
    	 s.delete(0, s.length() - 4); //使用delete方法从缓冲区删除某些字位，delete的两个参数表示删除的起始位置和结束位置
    	 
    	 //生成文件名
    	fileName = fileName + s.toString() + "." + fileExt;
    	return fileName;
	}
}
