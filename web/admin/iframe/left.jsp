<%@ page language="java" import="java.util.*" contentType="text/html;charset=gb2312"%>
<jsp:useBean id="sn" scope="page" class="com.bean.SystemBean" />
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
String dir=sn.getDir();
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<HTML>
<HEAD>
<TITLE>ϵͳ����</TITLE>
<META http-equiv=Content-Language content=zh-cn>
<META http-equiv=Content-Type content="text/html; charset=gb2312">
<LINK href="<%=basePath %><%=dir %>/images/Admin_Style.css" rel=stylesheet>
<META content="MSHTML 6.00.2900.3243" name=GENERATOR>
</HEAD>
<SCRIPT language="JavaScript" type="text/JavaScript">
<!--
var array = new Array();//����˳��
array[0]=1;array[1]=2;array[2]=3;array[3]=4;array[4]=5;array[5]=6;array[6]=7;array[7]=8;array[8]=9;array[9]=10;
function expand(id_value){
  var tmp;
  eval("tmp=document.getElementById('id_"+id_value+"').style.display");
  if(tmp==''){
    eval("document.getElementById('id_"+id_value+"').style.display='none'");
  }else{
   for(i=0;i<array.length;i++){
      eval("document.getElementById('id_"+array[i]+"').style.display='none'");
  }
    eval("document.getElementById('id_"+id_value+"').style.display=''");
  }  
 }
//-->
</SCRIPT>
<%
	String username=(String)session.getAttribute("user");
	if(username==null){
		response.sendRedirect(path+"/error.jsp");
	}
	else{
	List list=(List)session.getAttribute("list");
	String QX=list.get(4).toString();
	String temp[]=QX.split("/");
%>
<BODY  oncontextmenu="return false;" onselectstart="return false;" leftMargin=0 background=<%=basePath %><%=dir %>/images/MainBg.gif topMargin=0 scroll=no marginheight="0" marginwidth="0">
<TABLE bgColor=#eef8fe  class=HeaderTdStyle height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top align=middle>
      <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD align=middle ><IMG height=17 src="<%=basePath %><%=dir %>/images/sys.gif" width=21>
          <a href="<%=basePath %><%=dir %>/iframe/main.jsp" target="MainFrame">������ҳ</a>
          </TD>
        </TR>
        </TBODY>
      </TABLE>
      <TABLE  bgColor=#eef8fe   height="100%" cellSpacing=0 cellPadding=0 width="100%" border=0>
        <TBODY>
        <TR>
          <TD vAlign=top height="100%">
          <DIV style="OVERFLOW: auto; WIDTH: 100%; HEIGHT: 96%" align=center>
<TABLE  bgColor=#eef8fe cellSpacing=0 cellPadding=0 width="90%" align=center border=0>
  <TBODY> 
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(1)>
    <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>����ϵͳ����</TD></TR>
    </TABLE>
    <TABLE width="100%" border="0" align="center" id=id_1 style="display:none">
    <TR>
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> 
      <a href="<%=basePath %><%=dir %>/system/user.jsp" target="MainFrame">����Ա����</a></SPAN></TD></TR>
  	<TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/system/log.jsp" target="MainFrame">��̨��¼��־</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
<TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(2)>
  <TR>
  	<TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ���ƹ���</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_2 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/index.jsp" target="MainFrame">ҩƷ���ƹ���</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/edit.jsp?method=addmc" target="MainFrame">����ҩƷ����</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(3)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ������</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_3 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/leibie.jsp" target="MainFrame">ҩƷ������</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/addleibie.jsp?method=addleibie" target="MainFrame">����ҩƷ���</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(4)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ��Ч����</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_4 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/jixing.jsp" target="MainFrame">ҩƷ��Ч����</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/addjx.jsp?method=addjx" target="MainFrame">����ҩƷ��Ч</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(5)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ��λ����</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_5 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/danwei.jsp" target="MainFrame">ҩƷ��λ����</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/adddw.jsp?method=adddanwei" target="MainFrame">����ҩƷ��λ</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>


  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
    <TD noWrap width="35%">
      <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(6)>
        <TR>
          <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
          <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ��ѯ����</TD></TR>
      </TABLE>
      <TABLE width="100%" border="0" align="center" id=id_6 style="display:none">
        <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">

          <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif"
                                      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/jSearch.jsp?method=jsearchmc" target="MainFrame">ҩƷ��ѯ</a></SPAN></TD></TR>
        <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
          <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif"
                                      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/yao/mSearch.jsp?method=msearchmc" target="MainFrame">��֢��ҩ</a></SPAN></TD></TR>
      </TABLE>
    </TD>
  </TR>


  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(7)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ��������</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_7 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jin/index.jsp" target="MainFrame">ҩƷ��������</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/jin/edit.jsp?method=addjin" target="MainFrame">����ҩƷ����</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(8)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ���۹���</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_8 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/xiao/index.jsp" target="MainFrame">ҩƷ���۹���</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/xiao/edit.jsp?method=addxiao" target="MainFrame">����ҩƷ����</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(9)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ������</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_9 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/ku/index.jsp" target="MainFrame">ҩƷ������</a></SPAN></TD></TR>
    </TABLE>
  </TD>
  </TR>
   <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(10)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ͳ�Ʊ���</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_10 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tong/cun.jsp" target="MainFrame">����嵥</a></SPAN></TD></TR>
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tong/guo.jsp" target="MainFrame">����ҩƷ�嵥</a></SPAN></TD></TR>
 <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tong/xiao.jsp" target="MainFrame">ҩƷ���۱���</a></SPAN></TD></TR>
  </TABLE>
  </TD>
  </TR>
  <TR ParentID="SystemLastArticle" AllParentID="SystemLastArticle">
  <TD noWrap width="35%">
  <TABLE width="100%" border="0" align="center"style="cursor:hand" onclick=javascript:expand(11)>
  <TR>
    <TD height="31" background="<%=basePath %><%=dir %>/images/linkbg1.gif">&nbsp;</td>
    <TD background="<%=basePath %><%=dir %>/images/linkbg1.gif" >&nbsp;<IMG src="<%=basePath %><%=dir %>/images/menu.gif" align=absMiddle>ҩƷ�ɹ���ʾ</TD></TR>
  </TABLE>
  <TABLE width="100%" border="0" align="center" id=id_11 style="display:none">
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tong/tishi.jsp" target="MainFrame">ҩƷ�ɹ���ʾ</a></SPAN></TD></TR>
  <TR ParentID="ConventionLastPic" AllParentID="ConventionLastPic">
    <TD noWrap width="35%"><IMG src="<%=basePath %><%=dir %>/images/bullet.gif" 
      align=absMiddle><SPAN style="CURSOR: default"> <a href="<%=basePath %><%=dir %>/tong/low.jsp" target="MainFrame">��ͱ�������</a></SPAN></TD></TR>
  
  </TABLE>
  </TD>
  </TR>
  </TBODY>
</TABLE>
</DIV>
    </TD>
    </TR>
    </TBODY>
    </TABLE>
    </TD></TR>
    </TBODY>
    </TABLE>
</BODY>
<%} %>
</HTML>
