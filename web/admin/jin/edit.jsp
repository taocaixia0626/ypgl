<%@ page language="java" import="java.util.*,com.util.*"  contentType="text/html;charset=gb2312"%>
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
<SCRIPT language=JavaScript src="<%=basePath %><%=dir %>/images/calendar.js"></SCRIPT>
<STYLE type=text/css>
BODY {
	MARGIN-LEFT: 0px; BACKGROUND-COLOR: #ffffff
}
.STYLE1 {color: #ECE9D8}
</STYLE>
</HEAD>
<!-- ҩƷ���������� ҩƷ������𣬹�Ч����λ�����ۣ��ۼۣ��������ܽ��������ڣ���Ʒ���ţ����أ���Ч�ڵȣ����������ڣ�����������ҩƷ�嵥�� -->
<script type="text/javascript">
function check()
{
	if(document.form1.ypmc.value==""||document.form1.yplb.value==""||document.form1.ypjx.value==""||document.form1.ypdw.value==""||document.form1.ypjj.value==""
	||document.form1.ypsl.value==""||document.form1.jhrq.value==""||document.form1.ypph.value==""
	||document.form1.ypcd.value==""||document.form1.yxq.value==""||document.form1.gqrq.value=="")
	{
		alert("������Ŀ������д��");
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
	String method=request.getParameter("method").trim();
	String id=request.getParameter("id");
	String ypmc="";String yplb="";String ypjx="";String ypdw="";String ypjj="";String ypsj="";
	String ypsl="";String jhrq="";String ypph="";String ypcd="";String yxq=""; String dqrq="";
	if(method.equals("upjinhuo")){
		List list=yb.getOneMedicine(Integer.parseInt(id));
		ypmc=list.get(1).toString();yplb=list.get(2).toString();ypjx=list.get(3).toString();ypdw=list.get(4).toString();
		ypjj=list.get(5).toString();ypsl=list.get(6).toString();
		jhrq=list.get(7).toString().substring(0,10);ypph=list.get(8).toString();ypcd=list.get(9).toString();yxq=list.get(10).toString(); 
		dqrq=list.get(11).toString().substring(0,10);
	}
		
%>
<!-- ҩƷ���������� ҩƷ������𣬼��ͣ���λ�����ۣ��ۼۣ��������ܽ��������ڣ���Ʒ���ţ����أ���Ч�ڵȣ����������ڣ�����������ҩƷ�嵥�� -->
<BODY >
 <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 class=tablewidth>
		  <TBODY>
		  <TR align="center" class=head>
			<TD height=23>ҩƷ�������� ������Ŀ������д</TD>
		  </TR>
		  <TR align="center" >
			<TD >
		<form name="form1" action="<%=basePath %>YaoServlet" method="post" onsubmit="return check()">
		  <TABLE width="100%" border=0 align="center" cellPadding=3 cellSpacing=1 >
		  <TBODY>	  
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ���룺<input type=hidden name=method value=<%=method %>><input type=hidden name=id value=<%=id %>></TD>
			<TD align=left><select name=ypmc>
			<%if(method.equals("upjinhuo")) {%><option value="<%=ypmc %>"><%=ypmc %></option><%}else{ %>
			<option value="">---��ѡ��---</option><%} %>
			<%List mclist=yb.getAllMc();if(!mclist.isEmpty()){for(int i=0;i<mclist.size();i++){List list2=(List)mclist.get(i); %>
			<option value="<%=list2.get(0).toString() %>"><%=list2.get(0).toString() %></option>
			<%}} %>
			</select>
			 </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ���</TD>
			<TD align=left><select name=yplb>
			<%if(method.equals("upjinhuo")) {%><option value="<%=yplb %>"><%=yplb %></option><%}else{ %>
			<option value="">---��ѡ��---</option><%} %>
			<%List lblist=yb.getAllClass();if(!lblist.isEmpty()){for(int i=0;i<lblist.size();i++){List list2=(List)lblist.get(i); %>
			<option value="<%=list2.get(1).toString() %>"><%=list2.get(1).toString() %></option>
			<%}} %>
			</select></TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ��Ч��</TD>
			<TD align=left><select name=ypjx>
			<%if(method.equals("upjinhuo")) {%><option value="<%=ypjx %>"><%=ypjx %></option><%}else{ %>
			<option value="">---��ѡ��---</option><%} %>
			<%List jxlist=yb.getAllJx();if(!jxlist.isEmpty()){for(int i=0;i<jxlist.size();i++){List list2=(List)jxlist.get(i); %>
			<option value="<%=list2.get(1).toString() %>"><%=list2.get(1).toString() %></option>
			<%}} %>
			</select> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ��λ��</TD>
			<TD align=left><select name=ypdw>
			<%if(method.equals("upjinhuo")) {%><option value="<%=ypdw %>"><%=ypdw %></option><%}else{ %>
			<option value="">---��ѡ��---</option><%} %>
			<%List dwlist=yb.getAllDw();if(!dwlist.isEmpty()){for(int i=0;i<dwlist.size();i++){List list2=(List)dwlist.get(i); %>
			<option value="<%=list2.get(1).toString() %>"><%=list2.get(1).toString() %></option>
			<%}} %>
			</select>  </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ���ۣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=ypjj value="<%=ypjj %>"  onkeyup="this.value=this.value.replace(/\D/gi,'')"> </TD>
		  </TR>
		 <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>ҩƷ������</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=ypsl value="<%=ypsl %>"  onkeyup="this.value=this.value.replace(/\D/gi,'')"> </TD>
		  </TR>
		   <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�������ڣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=jhrq value="<%=jhrq %>" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>��Ʒ���ƣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=ypph value=<%=ypph %>> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>��&nbsp;&nbsp;&nbsp;&nbsp;�أ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=ypcd value=<%=ypcd %>> </TD>
		  </TR>
		  <TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�� Ч �ڣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=yxq value="<%=yxq %>" onkeyup="this.value=this.value.replace(/\D/gi,'')"> ��</TD>
		  </TR>
		<TR  align="center" bgColor=#ffffff>
			<TD width=40% id=map align=right>�������ڣ�</TD>
			<TD align=left><input type=text size=30 maxlength=50 name=dqrq value="<%=dqrq %>" readonly onclick="SelectDate(this,'yyyy-MM-dd')"  this.Txt_Date.Attributes["onclick"] = "SelectDate(this,'yyyy-MM-dd')";> </TD>
		  </TR>
		  
		   <TR  align="center" bgColor=#ffffff>
			<TD colspan=2 align=center><input type=submit value="�ύ"></TD>
		  </TR>
		  </TBODY>
	   </TABLE>
		  </form>
		  </TD>
		  </TR>
		  </TBODY>
	   </TABLE>
</BODY>
<%} %>

</HTML>
