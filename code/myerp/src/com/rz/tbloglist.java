package com.rz;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class prolistforsearch
 */
@WebServlet("/tbloglist")
public class tbloglist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public tbloglist() {
        super();
        
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			int currentpage = 1;//默认查询第一页的数据
			request.setCharacterEncoding("utf-8");//这种接收参数的编码
			String key=request.getParameter("key");//接收查询关键字，接收的时候，如果关键字中包含了中文，此处很可能会乱码。
			if(!(key==null||key.equals("")))//此处注意：java中判断两个字符串是否相等，使用的不是== 而是equals这个比较函数。
			{
				key = new String(key.getBytes("iso-8859-1"), "utf-8");//解决中文乱码的问题
			}
			try {
				String p = request.getParameter("p");//接收页码
				currentpage = Integer.valueOf(p);//接收到的页码是字符串，把页面转为数字
			} catch (Exception e) {
				currentpage = 1;//如果前端没有传递页码过来，我们就默认查询第一页的数据
			}
			DBHelper Dal = new DBHelper();
			String strSql = " select id from tblog order by id desc ";//检查数据库表中满足条件的记录一共有多少条
			if(!(key==null||key.equals("")||key.equals("null")))//如果传递的关键字不为空，说明这个是你输入了关键字后进行的查询
			{
				strSql = " select id from tblog where username like '%"+key+"%' or msg like '%"+key+"%' order by id desc ";
			}
			else{
				key="";
			}
			
			List<Map<String, Object>> listall = null;//定义一个容器来保存查询的结构
			List<Object> params = new ArrayList<Object>();
			try {
				listall = Dal.executeQuery(strSql, params);
			} catch (SQLException e) {
				e.printStackTrace();
			}

			/*分页功能开始*/
			Pager pageobj = new Pager();
			pageobj.allrecordcount = listall.size();//获取满足条件的记录数量
			pageobj.pagesize = 10;
			pageobj.currentpage = currentpage;
			pageobj.urlname = "";
			pageobj.w="key="+key;//w是一个跟随参数，为什么要用这个跟随参数，是因为在第一页查询的时候用到了关键字，到了下一页，查询的时候还需要这个关键字
			/*分页功能结束*/
			
			/*分页查询，查询当前页面的数据  比如要查询第3页的数据  需要要跳过前面2页面的数据 2=（3-1）*/
			int startindex = pageobj.pagesize * (pageobj.currentpage - 1);//这个就是计算总共要跳过的记录数
			String strSqlpager = " select * from tblog order by id desc limit "+startindex + "," + pageobj.pagesize + "";
			if(!(key==null||key.equals("")))//如果输入的关键字不为空，查询的时候 还要加上限制调节 只查询username或者msg中包含关键字的记录
			{
				strSqlpager = " select * from tblog where username like '%"+key+"%' or msg like '%"+key+"%' order by id desc limit "+startindex + "," + pageobj.pagesize + "";
			}
			
			List<Map<String, Object>> listpage = null;//定义一个容器来保存查询的结果
			try {
				listpage = Dal.executeQuery(strSqlpager, params);//执行查询
			} catch (SQLException e) {
				e.printStackTrace();
			}
			String pagestr = pageobj.GetPageInfo();//获取分页信息 字符串
			request.setAttribute("pagestr", pagestr);
			request.setAttribute("list", listpage);//把分页信息和查询出来的数据通过request对象的setAttribute属性返回给jsp页面
			request.getRequestDispatcher("/admin/tbloglist.jsp").forward(request,
					response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
	}

}
