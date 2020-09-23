package com.rz;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

public class tblogopt {
	
	//static表示当前这个函数是一个静态函数  静态函数：调用的时候不需要new一个类的对象，可以使用 类名.函数名的形式直接调用。
	public static void addmsg(int typeid,String msg,HttpServletRequest request)
	{
		Date t=new Date();//获取系统当前的时间
	    SimpleDateFormat df1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//设置时间的格式
	    String ctime=df1.format(t);//把当前的系统时间格式化		
	    
	    
	    Object currentmember=request.getSession().getAttribute("currentuser");//获取当前用户信息。
	    Map<String, Object> obj=(Map<String,Object>)request.getSession().getAttribute("currentuser");	
	    //在记录日志的时候，有可能这个人已经登录了，还有一种可能是这个人根本没登录，在暴力破解登录密码
		String memberid="0";
		String truename="未知";
		if(!(currentmember == null||currentmember == ""||currentmember.equals(""))){
			memberid=obj.get("id").toString();//如果说当前用户已经登录，我们就记录当前用户的id和真实姓名
			truename=obj.get("truename").toString();
		}
		String strSql=" insert into tblog (typeid,userid,username,msg,ctime) values (?,?,?,?,?)";
		//定义参数对象
		List<Object> params = new ArrayList<Object>();
		params.add(typeid);
		params.add(memberid);
		params.add(truename);
		params.add(msg);
		params.add(ctime);
		DBHelper Dal=new DBHelper();		
		Dal.excuteSql(strSql, params);//此处执行插入日志内容	
	}

	

}
