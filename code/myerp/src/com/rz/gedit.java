package com.rz;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class roleedit
 */
@WebServlet("/gedit")
public class gedit extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public gedit() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id=request.getParameter("id");
		String strSql="select * from tbgongyingshang where id=? ";
		List<Object> params = new ArrayList<Object>();
		params.add(id);	
		DBHelper Dal=new DBHelper();
		Map<String, Object> objbyid=Dal.getSingleObject(strSql, params);
		request.setAttribute("objbyid",objbyid);
		request.getRequestDispatcher("admin/gedit.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		//接收参数
		String gname=request.getParameter("gname");	
		String gnumber=request.getParameter("gnumber");
		String gaddress=request.getParameter("gaddress");
		String gtime=request.getParameter("gtime");
		String gproduct=request.getParameter("gproduct");
		String gtel=request.getParameter("gtel");	
		String id=request.getParameter("id");	
		String strSql="update tbgongyingshang set gname=?,gnumber=?,gaddress=?,gtime=?,gproduct=?,gtel=? where id=?";
		List<Object> params = new ArrayList<Object>();
		params.add(gname);
		params.add(gnumber);
		params.add(gaddress);
		params.add(gtime);
		params.add(gproduct);
		params.add(gtel);
		params.add(id);
		
		DBHelper Dal=new DBHelper();		
		Dal.excuteSql(strSql, params);			
		response.setCharacterEncoding("utf-8");
		response.setContentType("text/html;charset=utf-8");
		response.getWriter().write("<font color='green'>保存成功！</font>");
		response.setHeader("Refresh", "3;URL="+request.getContextPath()+"/gedit?id="+id);	
	}

}
