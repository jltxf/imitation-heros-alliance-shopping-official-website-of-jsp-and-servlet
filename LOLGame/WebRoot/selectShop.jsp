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
	min-width: 195px;
	width: 100%;
	min-height: 80px;
	height: auto;
}

.list-shop .sidebar {
	width: 195px;
	height: 80px;
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

.shop {
	width: 1050px;
	position: relative;
	left: 50px;
	margin-top: 50;
	margin-bottom: 30px;
	float:left;
}

.shop .cente {
	width:1050px;
}

.cente ul {
	height: 43px;
	background: #efefef;
	color: #000;
	width: 1050px;
}

.shop  .cente li {
	line-height: 43px;
	align: center;
	font-size: 14px;
	display: inline-block;
}

.shop .cente .d1 {
	width: 120px;
	font-align: left;
}

.shop .cente .d2 {
	width: 100px;
	font-align: left;
}

.shop .cente .d3 {
	width: 122px;
}

.shop .cente .d4 {
	width: 120px;
}

.shop .cente .d5 {
	width: 80px;
}

.shop .cente .d6 {
	width: 80px;
}

.shop .cente .d7 {
	width: 80;
}

.shop .cente .d8 {
	width: 100px;
}

.shup {
	width: 1200px;
	height:220px;
}

.shup .shob {
	width: 1000px;
	position: relative;
	left: 50px;
	border: 1px solid #c8c8c8;
	display: block;
}

.shup .shob ul {
	height: 124px;
	color: #000;
}

.shup .shob li {
	align: center;
	font-size: 14px;
	display: inline-block;
}

.shup .shob .ims {
	width: 88px;
	height: 88px;
}

.shup .shob img {
	height: 100%;
	width: 100%;
}

.shup .shob .nam {
	width: 150px;
	font-align: left;
	bottom: 45px;
}

.shup .shob .mb {
	position: relative;
	bottom: 45px;
}

.shup .shob .pri {
	width: 120px;
}

.shup .shob .cmb {
	width: 95px;
}

.shup .shob .num {
	width: 152px;
}

.shup .shob .mnb {
	width: 80px;
}

.shup .shob .nmm {
	width: 70px;
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
		str = (String) request.getAttribute("classify");
		str1 = (String) request.getAttribute("classfed");
	%>

	<div class="breadcrumb">
		<a href="shop.jsp" class="f1 bcb-link" title=商城>商城</a>
		<p class="f1 bcb-arr">></p>
		<a href="browserServlet?id=<%=request.getAttribute("classify")%>"
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
						href="browserServlet?id=<%=request.getAttribute("classify")%>"><span
						style="cursor:pointer;"><%=request.getAttribute("classify")%></span>
					</a>
				</dt>



	</dl>
	</div>
</div>

<a href="addCommodity.jsp"><button>新增</button></a>
<div class="shop">

	<div class="cente">
		<ul>

			<li class="d1">商品</li>
			<li class="d2">名称</li>
			<li class="d3">单价</li>
			<li class="d4">数量</li>
			<li class="d5">售量</li>
			<li class="d6">评价</li>
			<li class="d7">收藏</li>
			<li class="d8">操作</li>
		</ul>
		
	</div>
</div>




	<%
		for (Commodity com : list) {
	%>
	



	<div class="shup">

		<div class="shob">

			<ul>

				<li class="ims"><a
					href="browserServlet?id=one&no=<%=com.getId()%>"> <img
						src="image/commodity/<%=com.getPicture1()%>"></a></li>

				<li class="nam mb"><%=com.getName()%></li>
				<li class="pri mb"><%=com.getPrice()%></li>
				<li class="cmb mb"><%=com.getNumber()%></li>
				<li class="cmb mb"><%=com.getCell()%></li>
				<li class="cmb mb"><%=com.getEvaluation()%></li>
				<li class="cmb mb"><%=com.getCollect()%></li>
				<li class="nmm mb" style="border: 1px solid #c8c8c8;"><a href="deletebrowServlet?modte=delete&id=<%=com.getId()%>&webpagename=<%=request.getServletPath()%>">删除</a></li>
				<li class="nmm mb" style="border: 1px solid #c8c8c8;"><a href="updateCommodity.jsp?iddx=<%=com.getId()%>">修改</a></li>
			</ul>
		</div>
	</div>



	
	<%
		}	
		
	%>


	<div class="afooter">
		<%@include file="endshop.jsp"%>
	</div>
</body>
</html>
