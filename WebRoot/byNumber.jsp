<%@ page contentType="text/html; charset=gb2312"  language="java" errorPage=""%>
<%@ page import="java.sql.*" %>
<%response.setContentType("text/html;charset=utf-8"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>

</head>
<body>
<% String id=request.getParameter("number"); %>
 根据学号<%=id%>查询到的记录:
<table width="360" border="1" cellspacing="0" cellpadding="6">
    <tr> 
      <td width="60" align="center" valign="middle">编号</td>
      <td width="60" align="center">姓名</td>
      <td width="60" align="center">地址</td>
      <td width="80" align="center">出生日期</td>
          
    </tr>
<%
   
	String url = "jdbc:mysql://localhost/ch08";
	String userName = "root";
	String password = "123";
	String sql = null;
	Connection conn = null;
	Statement stmt = null;
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch(ClassNotFoundException e) {
		System.out.println("加载驱动器类时出现异常");
	}
		conn = DriverManager.getConnection(url, userName, password);
		
		//创建Statement语句
		stmt = conn.createStatement();	
		url="select * from student where stu_id="+id;
		ResultSet rs=stmt.executeQuery(url);
		while(rs.next())
		{String id1=rs.getString(1);%>
		
	<tr> 
      <td ><%=id1%></td>
      <td ><%=rs.getString(2)%></td>
      <td ><%=rs.getString(3)%></td>
      <td align="center" valign="middle"><%=rs.getString(4)%></td>
       </tr>
			
	<%	}%>
	</table>
</body>
</html>