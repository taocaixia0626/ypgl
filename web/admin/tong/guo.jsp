<%@ page language="java" import="java.util.*"  contentType="text/html;charset=gb2312"%>
<%@ page import="com.bean.*" %>
<jsp:useBean id="yb" scope="page" class="com.bean.YaoBean" />
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<HTML><HEAD><TITLE>��̨������</TITLE>
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" type=text/css rel=stylesheet>
<LINK href="<%=basePath %><%=dir %>/images/style.css" type=text/css rel=stylesheet>
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/Common.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<%
String message = (String)request.getAttribute("message");
	if(message == null){
		message = "";
	}
	if (!message.trim().equals("")){
		out.println("<script language='javascript'>");
		out.println("alert('"+message+"');");
		out.println("</script>");
	}
	request.removeAttribute("message");
%>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
		List list=(List)session.getAttribute("list");
		List list2=yb.getAllOldMedicine();		
%>
<!-- ҩƷ���������� ҩƷ������𣬼��ͣ���λ�����ۣ��ۼۣ��������ܽ��������ڣ���Ʒ���ţ����أ���Ч�ڵȣ����������ڣ�����������ҩƷ�嵥�� -->
<BODY >
<style media=print> 
.Noprint{display:none;}<!--�ñ���ʽ�ڴ�ӡʱ���طǴ�ӡ��Ŀ--> 
.PageNext{page-break-after: always;}<!--���Ʒ�ҳ--> 
</style> 
<object id="WebBrowser" width=0 height=0 classid="CLSID:8856F961-340A-11D0-A96B-00C04FD705A2"> 
</object> 
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>���</TD>
			<TD>ҩƷ����</TD>
			<TD>���</TD>
			<TD>��Ч</TD>
			<TD>��λ</TD>
			<TD>����</TD>
			<TD>�������</TD>
			<TD>�ܽ��</TD>
			<TD>��������</TD>
			<TD>��Ʒ����</TD>
			<TD>����</TD>
			<TD>��Ч�ڣ��꣩</TD>
			<TD>��������</TD>
		  </TR>
		<%
		if(list2.size()!=0){
			for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
				int m=yb.getSale(list3.get(1).toString().trim());
		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD width="30" id=map><%=i+1 %></TD>
			<TD id=map><%=list3.get(1).toString() %></TD>
			<TD id=map><%=list3.get(2).toString() %></TD>
			<TD id=map><%=list3.get(3).toString() %></TD>
			<TD id=map><%=list3.get(4).toString() %></TD>
			<TD id=map><%=list3.get(5).toString() %></TD>
			<TD id=map><%=Integer.parseInt(list3.get(6).toString())-m %></TD>
			<TD id=map><%=Integer.parseInt(list3.get(5).toString())*Integer.parseInt(list3.get(6).toString()) %></TD>
			<TD id=map><%=list3.get(7).toString().substring(0,10) %></TD>
			<TD id=map><%=list3.get(8).toString() %></TD>			
			<TD id=map><%=list3.get(9).toString() %></TD>
			<TD id=map><%=list3.get(10).toString() %></TD>
			<TD id=map><%=list3.get(11).toString().substring(0,10) %></TD>
		  </TR>
		<%}}%>
		 </TBODY>
	   </TABLE>

</BODY>
<%} %>

</HTML>
