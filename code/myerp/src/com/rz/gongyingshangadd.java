package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roleadd
 */
@WebServlet("/gongyingshangadd")
public class gongyingshangadd extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gongyingshangadd() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//1、先接受前端传递过来的参数
				request.setCharacterEncoding("utf-8");
				String gname=request.getParameter("gname");	
				String gnumber=request.getParameter("gnumber");
				String gaddress=request.getParameter("gaddress");
				String gtime=request.getParameter("gtime");
				String gproduct=request.getParameter("gproduct");
				String gtel=request.getParameter("gtel");
				//2、把接受到的参数添加到数据库
				String strSql=" insert into tbgongyingshang (gname,gnumber,gaddress,gtime,gproduct,gtel) values (?,?,?,?,?,?)";
				//定义参数对象
				List<Object> params = new ArrayList<Object>();
				params.add(gname);
				params.add(gnumber);
				params.add(gaddress);
				params.add(gtime);
				params.add(gproduct);
				params.add(gtel);
					
				DBHelper Dal=new DBHelper();		
				Dal.excuteSql(strSql, params);		
				response.setCharacterEncoding("utf-8");
				response.setContentType("text/html;charset=utf-8");
				response.getWriter().write("<font color='green'>保存成功！</font>");
				response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/admin/gongyingshangadd.jsp");	
	}

}