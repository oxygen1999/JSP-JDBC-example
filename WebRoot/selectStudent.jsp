<%@ page contentType="text/html;charset=GB2312" %>
<HTML>
<BODY>
<Font size=4>
<FORM action="byNumber.jsp" Method="post">
   根据学号查询
   <BR>输入学号:<Input type=text name="number">
   <Input type=submit name="g" value="提交">
</Form>
<FORM action="byName.jsp" Method="post">
  根据姓名（模糊）查询
  <BR> 姓名含有<Input type=text name="name" >
  <Input type=submit  value="提交">
</Form>
</Font>
</BODY>
</HTML>
