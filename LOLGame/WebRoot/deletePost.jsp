<%@ page language="java" import="java.util.*,dao.*,model.*"
	pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'deletePost.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
</head>
<body>
	<%
		request.setCharacterEncoding("UTF-8"); //设置编码方式为utf-8
	%>

	<div class="bm_c">
		<table cellspacing="0" cellpadding="0" align="center" width="800px;">
			<tbody>
				<!--  <form>
					<%!PostDAO postinfo = new PostDAO();%>
					
				</form>
-->
				<tr>
					<td align="left"><font size="5" color="#FF00FF">帖子主题</font></td>
					<td align="center"><font size="5" color="#FF00FF">作者</font>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<font
						size="5" color="#FF00FF"><font size="5" color="#FF00FF">作者</font>
					</font>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
				</tr>
				<%!int intPageSize = 7; //每页显示的记录数
	int currPageBegin; //起始记录索引
	int currPageEnds; //结束记录索引
	int intPageCount; //总页数
	int intPage; //待显示页码
	String strPage; //用户请求页码%>

				<%
					//取得待显示页码
					strPage = request.getParameter("pagenumber");

					if (strPage == null) {
						//表明在QueryString中没有pagenumber这一个参数，此时显示第一页数据
						intPage = 1;
					} else {
						//将字符串转换成整型
						intPage = Integer.parseInt(strPage);
						if (intPage < 1)
							intPage = 1;
					}

					//计算总页数
					intPageCount = (int) Math.ceil((postinfo.getNum() * 10 / 10.0)
							/ intPageSize);/*39.0 / 10(vector.size()+intPageSize-1)/ intPageSize*/
					//调整待显示的页码
					if (intPage > intPageCount)
						intPage = (int) intPageCount;
					//计算每一页的起始记录索引
					currPageBegin = intPage * intPageSize - (intPageSize - 1);
					currPageEnds = intPage * intPageSize;
				%>



				<%
					for (int i = 1; i <= postinfo.getNum(); i++) {
						int idd = postinfo.getNo(i);

						if (currPageBegin <= idd && currPageEnds >= idd) {
				%>
				<tr>
					<td align="left"><a
						href="CheckPostServlet?post1=<%=postinfo.getPostPostByNo(i)%>&cont1=<%=postinfo.getPostContByNo(i)%>"><%=postinfo.getPostPostByNo(i)%></a>
					</td>
					<td align="center"><%=postinfo.getPostNameByNo(i)%></td>
					<td align="right"><%=postinfo.getPostTimeByNo(i)%></td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="PostManagerServlet?str=<%=postinfo.getNoContByNo(i)%>&method=delete"
						style="text-decoration:none;">
							<button onclick="delcfm()">删除</button> </a>
					</td>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a
						href="alterPost.jsp?str=<%=postinfo.getNoContByNo(i)%>&method=alter"
						style="text-decoration:none;">
							<button>修改</button> </a>
					</td>
				</tr>
				<tr>
					<%
						}
					%>
					<%
						}
					%>

				</tr>
				<tr>
					<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;第<%=intPage%>页
						共<%=intPageCount%>页 <%
						//以下是分页的“上一页”“下一页”，有上一页就有链接，没有就为文字，下一页同理
					%> <%
 	//<dd class="page">
 %> <%
 	if (intPage > 1) {
 %> <a href="deletePost.jsp?pagenumber=<%=intPage - 1%>">上一页</a> <%
 	} else {
 %> 上一页 <%
 	}
 %>
					</td>
					<td align="right">
						<%
							//<dd class="pages">
						%> <%
 	if (intPage < intPageCount) {
 %> <a href="deletePost.jsp?pagenumber=<%=intPage + 1%>">下一页</a> <%
 	} else {
 %> 下一页 <%
 	}
 %>
					</td>
				</tr>
			</tbody>
		</table>
		<div align="center">
			<br> <br> <br> <a href="addPost.jsp"
				style="text-decoration:none;"><button>新增</button> </a>
		</div>
	</div>
	<script type="text/javascript">
		function delcfm() {
			if (!confirm("确认要删除？")) {
				window.event.returnValue = false;
			}
		}
	</script>
</body>
</html>
