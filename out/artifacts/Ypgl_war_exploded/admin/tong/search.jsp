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
<script type="text/javascript">
function jiancha()
{
	if(document.form1.stime.value==""||document.form1.etime.value=="")
	{
		alert("��������ʼ�ͽ�ֹʱ�䣡");	
		return false;
	}
}
</script>
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
	String stime=request.getParameter("stime");
	String etime=request.getParameter("etime");
		List list2=yb.getSearchSaleMedicine(stime,etime);		
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
			<TD>ҩƷ���</TD>
			<TD>�ۼ�</TD>
			<TD>����</TD>
			<TD>�ܽ��</TD>
			<TD>��������</TD>
			<TD>�޸�</TD>
			<TD>ɾ��</TD>
		  </TR>
		<%
		if(list2.size()!=0){
			for(int i = 0; i<list2.size(); i++){
				List list3 = (List)list2.get(i);
		%>
		  <TR  align="center" bgColor=#ffffff>
			<TD width="30" id=map><%=i+1 %></TD>
			<TD id=map><%=list3.get(1).toString() %></TD>
			<TD id=map><%=list3.get(2).toString() %></TD>
			<TD id=map><%=list3.get(3).toString() %></TD>
			<TD id=map><%=Integer.parseInt(list3.get(2).toString().trim())*Integer.parseInt(list3.get(3).toString().trim()) %></TD>
			<TD id=map><%=list3.get(4).toString().substring(0,10) %></TD>
			<TD id=map><a href="<%=basePath %>admin/xiao/edit.jsp?method=upxiao&id=<%=list3.get(0).toString()%>">�޸�</a></TD>
			<TD id=map><a href="<%=basePath %>YaoServlet?method=delxiao&id=<%=list3.get(0).toString()%>">ɾ��</a></TD>
		  </TR>
		<%}}%>
		 </TBODY>
	   </TABLE>
	  
</BODY>
<%} %>

</HTML>
