<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.SQLException" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="java.sql.DriverManager" %>

<%  
	Connection connect = null;
	Statement s = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect =  DriverManager.getConnection("jdbc:mysql://node185648-nhattan280.jelastic.servint.net/websitehoithao?useUnicode=true&characterEncoding=UTF-8","root","AXQfml41917");
			s = connect.createStatement();
			//xóa event với ID tương ứng đã lấy được.
			String ID = request.getParameter("UserID");
			String sql = "DELETE FROM users where UserID='"+ID+"' ";
			s.execute(sql);		
			out.print("<script>");
            out.print("alert(\"Đã xóa!!!\")");
            out.print("</script>");
	        RequestDispatcher rd= request.getRequestDispatcher("Admin_Account_Manager.jsp");
	        rd.include(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			out.println(e.getMessage());
			e.printStackTrace();
		}
		try {
			if(s!=null){
			s.close();
			connect.close();
			}
		} catch (SQLException e) {
// TODO Auto-generated catch block
		out.println(e.getMessage());
		e.printStackTrace();
}
%>