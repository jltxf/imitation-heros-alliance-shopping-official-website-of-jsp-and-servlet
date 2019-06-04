<%@ page language="java"
	import="java.util.*,dao.*,servlet.*,model.*,db.*" pageEncoding="UTF-8"%>

<style type="text/css">
.breadcrumb {
	min-width: 1240px;
	width: 100%;
	height: 62px;
	line-height: 62px;
	text-align: left;
}

.f1 {
	float: left;
	display: inline;
}

.breadcrumb .bcb-link {
	text-indent: 50px;
	font-size: 20px;
}

.breadcrumb .bcb-cur {
	color: #4b4b4b;
	font-size: 20px;
}

.breadcrumb .bcb-arr {
	color: #999;
	padding-left: 15px;
	padding-right: 15px;
}

.breadcrumb a {
	color: #4b4b4b;
	font-size: 16px;
	display: block;
	width: auto;
}

a {
	text-decoration: none;
	cursor: pointer;
	color: #000;
}

a:link,a:visited {
	cursor: pointer;
}

* {
	margin: 0;
	padding: 0;
}

.list-banner {
	min-width: 1280px;
	width: 100%;
	min-height: 129px;
	height: auto;
	overflow: hidden;
}

.list-banner .list-banimg {
	margin: 0 auto;
	min-width: 1280px;
	width: 100%;
	min-height: 129px;
	height: auto;
	display: block;
}

/*list*/
.list-shop {
	margin: 36px auto 90px;
	min-width: 1280px;
	width: 100%;
	min-height: 700px;
	height: auto;
}

.list-shop .sidebar {
	width: 195px;
	height: 700px;
}

.sidebar .navlist {
	margin: 7px 0 40px 51px;
	height: auto;
	color: #202020;
}

.sidebar .navlist dt {
	margin-bottom: 15px;
	width: 145px;
	height: 24px;
	line-height: 22px;
	text-indent: 12px;
	font-size: 22px;
	position: relative;
	font-weight: bold;
}

.sidebar .navlist dt .navl-line {
	position: absolute;
	top: 2px;
	left: 0;
	z-index: 1;
	display: block;
	width: 3px;
	height: 18px;
	background-position: -2px -125px;
}

.sidebar .navlist dd {
	width: 100%;
	height: 30px;
	line-height: 30px;
	text-indent: 12px;
	font-size: 14px;
}

.sidebar .navlist dd a {
	width: 100%;
	height: 30px;
	line-height: 30px;
	overflow: hidden;
	text-overflow: ellipsis;
	white-space: nowrap;
}

.good-list {
	margin-top: 32px;
	weidth: ;
	height: auto;
	overflow: hidden;
	height: auto;
}

.good-list li {
	float: left;
	margin-bottom: 56px;
	width: 33.3%;
	height: auto;
	position: relative;
	overflow: hidden;
}

.good-list li a .gl-img,.good-list li a .gl-img img {
	display: block;
	width: 100%;
	height: auto;
	vertical-align: bottom;
}

.good-list li a .gl-hoverimg {
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: auto;
	display: none;
}

.good-list li .gl-name {
	margin: 10px auto 0;
	width: 100%;
	height: 32px;
	line-height: 32px;
	text-align: center;
	font-size: 16px;
}

.good-list li .gl-pri {
	width: 100%;
	text-align: center;
	height: 30px;
	line-height: 30px;
	font-size: 30px;
}

.afooter {
	text-align: center;
	height: 100px;
	position: relative;
	top: 1058px;
	left: 0px;
}
</style>
<body>

	<%@include file="title.jsp"%>
	<%
		List<Commodity> list = null;
			CommodityDAO c = new CommodityDAO();
			List<String> list1 = null;
			list = c.getAllCommodity();
			list1 = c.getClassify1((String) request.getAttribute("classify"));
	%>
	<%
		String str = "";
															String str1 = "";
	%>
	<%
		str=(String)request.getAttribute("classify");
															str1=(String)request.getAttribute("classify1");
	%>



	<%!int intPageSize = 6; //每页显示的记录数
	int currPageBegin; //起始记录索引
	int currPageEnds; //结束记录索引
	int intPageCount; //总页数
	int intPage; //待显示页码
	String strPage; //用户请求页码%>

	<%
		//取得待显示页码
			strPage = (String)request.getAttribute("pagenumber");

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
			intPageCount = (int) Math.ceil(( c.getSizeCommodity(str, str1)* 10 / 10.0)
					/ intPageSize);/*39.0 / 10(vector.size()+intPageSize-1)/ intPageSize*/
			//调整待显示的页码
			System.out.print(intPageCount);
			if (intPage > intPageCount)
				intPage = (int) intPageCount;
			//计算每一页的起始记录索引
			currPageBegin = intPage * intPageSize - (intPageSize - 1);
			currPageEnds = intPage * intPageSize;
	%>

	<div class="breadcrumb">
		<a href="shop.jsp" class="f1 bcb-link" title=商城>商城</a>
		<p class="f1 bcb-arr">></p>
		<a
			href="browserServlet?classify=<%=request.getAttribute("classify")%>"
			class=" f1 bcb-cur"><%=request.getAttribute("classify")%></a>
	</div>
	<div class="list-banner">
		<a href="javascript:;" class="list-banlink" style="cursor:default;">
			<img src="image/ico-far.jpg" width="1920" height="200"
			class="list-banimg"> </a>
	</div>
	<div class="list-shop">

		<div class="f1 sidebar" id="leftBox">
			<div id="blk_productlist_left_category"></div>
			<%--for循环输出--%>
			<dl class="navlist">
				<dt>
					<i class="ico-menu navl-line"></i><a
						href="browserServlet?classify=<%=request.getAttribute("classify")%>"><span
						style="cursor:pointer;"><%=request.getAttribute("classify")%></span>
					</a>
				</dt>

				<%
					for(String com : list1) {
																						if(str1==null){
				%>

				<dd>
					<a href="browserServlet?classify=<%=str%>&classify1=<%=com%>"><%=com%></a>
				</dd>
				<%
					}else{
																										           if(com.equals(str1)){
				%>
				<dd>
					<a href="browserServlet?classify=<%=str%>&classify1=<%=com%>"><%=com%></a>
				</dd>

				<%
					}
																												}}
				%>
			</dl>
		</div>


		<div class="good-list">
			<ul>
				<%
					for (Commodity com : list) {
																						int i=0;
																						i++;
																						int j=1;
																						j++;
				%>
				<%
					if(str!=null){
							if(str.equals(com.getClassify())){
								if(str1==null){
										//int idd = com.getId();
										
				//if (currPageBegin <= idd && currPageEnds >= idd) {
				%>
				<li>
					<div class="gl-img" id="<%=i%>">
						<a href="browserServlet?id=one&no=<%=com.getId()%>"> <img
							src="image/commodity/<%=com.getPicture1()%>" width="527"
							height="506" alt="<%=com.getName()%>" id="gl-img"
							onmouseover="getFAX('<%=i%>','<%=j%>')"
							onmouseout="getFBX('<%=i%>','<%=j%>')"> </a>
					</div> <%--<div class="gl-img gl-hoverimg" id="<%=j%>"> --%> <%--<img src="image/commodity/<%=com.getPicture2()" width="527">--%>
					<%--id="gl-hoverimg" height="506" alt="<%=com.getName()%>">--%> <%--</div>--%>
					<p class="gl-name"><%=com.getName()%></p>
					<p class="gl-pri">
						¥$<%=com.getPrice()%></p>
				</li>
				<%
					//}
									}else{ 
											if(com.getClassify1().equals(str1)){
											//int idd = com.getId();
										//if (currPageBegin <= idd && currPageEnds >= idd) {
				%>
				<li>
					<div class="gl-img" id="<%=i%>">
						<a href="browserServlet?id=one&no=<%=com.getId()%>"> <img
							src="image/commodity/<%=com.getPicture1()%>" width="527"
							height="506" alt="<%=com.getName()%>" id="gl-img"
							onmouseover="getFAX('<%=i%>','<%=j%>')"
							onmouseout="getFBX('<%=i%>','<%=j%>')"> </a>
					</div>
					<p class="gl-name"><%=com.getName()%></p>
					<p class="gl-pri">
						¥$<%=com.getPrice()%></p>
				</li>
				<%
					}//}
				%>
				<%
					}}}}
				%>
			</ul>

		
			<script type="text/javascript">
				function getFAX(x, y) {
					var x = document.getElementById(x);
					var y = document.getElementById(y);
					y.style.display = "inline";
					x.style.display = "none";
				}

				function getFBX(x, y) {
					var x = document.getElementById(x);
					var y = document.getElementById(y);
					x.style.display = "inline";
					y.style.display = "none";

				}
			</script>
		</div>
	</div>
	<div class="afooter">
		<%@include file="endshop.jsp"%>
	</div>

</body>
</html>
