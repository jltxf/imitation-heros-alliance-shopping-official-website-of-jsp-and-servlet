<%@ page language="java" import="java.util.*,dao.*,servlet.*,model.*"
	pageEncoding="UTF-8"%>
<script type="text/javascript" src="js/lhgcore.js"></script>
<script type="text/javascript" src="js/lhgdialog.js"></script>
<%@ include file="title.jsp"%>
<script type="text/javascript">
	function selflog_show(id, action) {
		var num = document.getElementById("number").value;

		$.ajax({
			type : "post",
			dataType : "json",
			url : "CartServlet",
			data : {
				"id" : id,
				"num" : num,
				"action" : action
			}, //这是传送的json对象
			success : function(data) { //这是返回的json对象
				var objs = eval(data);//Json 对象需要转换 
				alert("aaaa");
				for ( var i in data) {
				} //json数组可直接用该方法遍历
			}
		});
		prj.style.display = "";

	}

	function changeNumber() {
		var num = parseInt(document.getElementById("number").value);
		if (num > 100) {
			document.getElementById("number").value = 100;
		} else if (num < 1) {
			document.getElementById("number").value = 1;
		}
	}
	function add() {
		var num = parseInt(document.getElementById("number").value);
		if (num < 100) {
			document.getElementById("number").value = ++num;
		}
	}
	function sub() {
		var num = parseInt(document.getElementById("number").value);
		if (num > 1) {
			document.getElementById("number").value = --num;
		}
	}
</script>
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

hr {
	height: 1px;
	border-top: 1px;
	background: #ccc;
}

.xiaoxie {
	width: 1180px;
	heigh: 646px;
	padding-bottom: 26px;
}

.clearfix {
	zoom: 1;
	//
	缩放比例
}

.xiangq_big {
	width: 629px;
	height: 620px;
	position: relative;
	z-index: 3;
}

.fl {
	float: left;
}

.xiangq_big .tab_box {
	margin-left: 90px;
	width: 460px;
	height: 460px;
	padding: 18px 0px 0px 0px;
	position: relative;
}

.product-img-box {
	position: relative;
}

.product-img-box img {
	width: 100%;
	height: 100%;
}

.fr {
	width: 550px;
	float: right;
	font-family: "微软雅黑", "宋体";
	margin-right: 0px;
}

.fr .fcd .fbd {
	float: left;
}

.fr .fcd .fbc {
	height: 52px;
	width: 562px;
	overflow: hidden;
	padding-left: 0px;
	padding-top: 14px;
}

.fr .fcd .fbc span {
	height: 42px;
	padding-top: 10px;
	line-height: 42px;
	font-size: 25px;
	float: left;
}

.fr .fcd {
	width: 550px;
	float: right;
	font-family: "微软雅黑", "宋体";
	margin-right: 0px;
	border-bottom: 1px #efefef solid;
	border-top: 1px #efefef solid;
}

.fr .pri {
	border-bottom: 1px #efefef solid;
	border-top: 1px #efefef solid;
	height: 92px;
	width: 100%;
	display: inline;
}

.fr .pri .pt {
	padding-top: 10px;
}

.fr .pri .frp0 {
	display: block;
}

.fr .pri .frp1 {
	float: left;
	text-align: center;
	padding-top: 40px;
}

.fr .pri .frp2 {
	color: #303030;
	font-size: 20px;
	font-weight: bolder;
	line-height: 24px;
	height: 24px;
	margin-right: 2px;
	display: block;
}

.fr .pri .prip {
	padding-top: 40px;
	padding-bottom: 20px;
	width: 495px;
	height: 26px;
	font-size: 30px;
	overflow: hidden;
	text-align: left;
}

.fr .prl {
	height: 54px;
	line-height: 54px;
	width: 183px;
	text-align: left;
	font-size: 14px;
	float: left;
	border-top: 1px solid #999;
	border-bottom: 1px solid #999;
}

.fr .prd {
	height: 152px;
	width: 100%;
}

.fr .prd span {
	float: left;
	color: #3d4145;
	display: block;
	font-size: 14px;
	position: relative;
	top: 25px;
	bottom: 25px;
}

.fr .prd .size {
	width: 20px;
	height: 34px;
	border: 1px solid #dcdcdc;
	text-align: center;
	line-height: 34px;
}

.fr .prd span .pfd {
	height: 34px;
	line-height: 34px;
	width: 48px;
	font-size: 14px;
	text-align: center;
	border: 0px;
	border-top: 1px solid #cacaca;
	border-bottom: 1px solid #cacaca;
	margin-left: 0px;
	margin-right: 0px;
	vertical-align: middle;
}

.fr .pre {
	height: 92px;
	width: 100%;
}

.fr .pre .pri {
	height: 92px;
	width: 180px;
	float: left;
}

.fr .pre .pri .prf {
	width: 158px;
	height: 48px;
	line-height: 48px;
	color: #FFF;
	display: block;
	background: #ed3029;
	font-size: 18px;
	text-align: center;
}

.fr .pre .pri .prf:hover {
	background: #F06;
}

.fr .pre .prh {
	height: 92px;
	width: 180px;
	float: left;
}

.fr .pre .prh .prg {
	width: 158px;
	height: 48px;
	line-height: 48px;
	color: #fff;
	display: block;
	background: #36a803;;
	font-size: 18px;
	text-align: center;
}

.fr .pre .prh .prg:hover {
	background: #019A0D;
}

.hed_bj {
	width: 100%;
	height: 47px;
	border-top: 1px solid #d7d7d7;
	border-bottom: 1px solid #d7d7d7;
	border-right: 1px solid #d7d7d7;
	background: #f7f8f8;
}

.w1180 {
	width: 1180px;
	margin: 0 auto;
	height: auto;
	background: #f7f8f8;
}

.hedt {
	line-height: 47px;
	height: 47px;
	border-left: 1px solid #c8c8c8;
	border-right: 1px solid #c8c8c8;
}

.shownav li {
	cursor: pointer;
}

.hedt li {
	padding: 0px 40px;
	border-right: 1px solid #c8c8c8;
	float: left;
	font-size: 14px;
	color: #555;
}

.hec {
	padding-top: 35px;
	border: 1px solid #d7d7d7;
	border-top: none;
}

.hef {
	width: 1158px;
	padding: 16px 16px;
	height: auto;
	line-height: 26px;
	background: #f7f8f8;
}

.heg {
	width: 879;
	margin-top: 15px;
}

.heg img {
	width: 100%;
}
</style>

<center>

	<%
		String pats = request.getContextPath();
		CommodityDAO c = new CommodityDAO();
		String i = (String)request.getAttribute("no");
		System.out.println(i);
		Commodity com = c.getCommodityById(Integer.parseInt(i));
		if (com != null) {
	%>
	<%
		int cd = com.getEvaluation();
	%>
	<div class="breadcrumb">
		<a href="shop.jsp" class="f1 bcb-link" title=商城>商城</a>
		<p class="f1 bcb-arr">></p>
		<a href="browserServlet?id=<%=request.getAttribute("ser")%>"
			class=" f1 bcb-cur"><%=request.getAttribute("ser")%></a>
	</div>
	<hr>
	<div class=" clearfix xiaoxie">
		<div class="fl xiangq_big">
			<div class="tab_box product-img-box" id="x">
				<img src="image/commodity/<%=com.getPicture1()%>"
					onmouseover="getFAX()" onmouseout="getFBX()" />
			</div>
		</div>
		<div class="fr">
			<div class="fcd">
				<div class="fbd fbc">
					<span><%=com.getName()%></span>
				</div>
				<div class="fbd ">
					<span>微信砍价购买更优惠！本套装预售，将于9月15日开始陆续发货。 </span>
				</div>

			</div>
			<hr>
			<div class="pri">
				<div class="pt"></div>
				<span class=" frp0 frp1">现价:</span> <span class="frp1 frp2">¥</span>
				<div class="prip"><%=com.getPrice()%></div>
			</div>

			<div class="prl">
				<p>
					最近销量
					<%=com.getCell()%></p>
			</div>

			<div class="prl">
				<p>
					累计评价
					<%=com.getEvaluation()%></p>
			</div>

			<div class="prl">
				<p>
					累计收藏宝贝
					<%=com.getCollect()%></p>
			</div>
			<form action="CartServlet">
				<div class="prd">
					<span style="display:block; top:30px">数量：</span> <span class="size"
						id="sub" onclick="sub();">-</span> <span><input type="text"
						id="number" name="num" value="1" size="2" class="pfd" /> </span> <span
						class="size" id="add" onclick="add();">+</span>
				</div>
				<hr>
				<div class="pre">
					<div class="pri">
						<input type="submit" value="立即购买" class="prf" onclick="obj()">
						<script type="text/javascript">
							function obj() {
								var use =
						<%=session.getAttribute("username2")%>
							;
								if (use == null) {
									alert("您还没有登录！登录后购物车的商品将保存到您账号中");
									return false;
								}
							}
						</script>
					</div>
					<input type="text" name="action" value="buy" style="display:none" />
					<input type="text" name="id" value=<%=com.getId()%>
						style="display:none" />
					<div class="prh">
						<%--应用js --%>
						<a class="prg"
							href="javascript:selflog_show(<%=com.getId()%>,'add')"
							onclick="obj()">加入购物车</a>
					</div>
					<div class="prj" id="prj" style="display:none;">
						<span style="color:#ccc;">你已成功加入！</span> <a
							href="CartServlet?action=show" style="color:red;">查看购物车</a>
					</div>
				</div>
			</form>
		</div>
	</div>


	<div class="hed_bj w1180">
		<ul class="hedt f1">
			<li>商品详情</li>
			<li>用户点评</li>
			<li>售后服务</li>
		</ul>
	</div>
	<div class="w1180 hec">

		<div>
			<div class="hef"></div>
			<div class="heg">
				<img src="image/commodity/070.png" />
			</div>
			<div class="heg">
				<img src="image/commodity/<%=com.getPicture1()%>" />
			</div>
			<%
				if (null != com.getPicture2()) {
			%>
			<div class="heg">
				<img src="image/commodity/<%=com.getPicture1()%>" />
			</div>
			<%
				}
			%>

			<div class="heg">
				<img src="image/commodity/072.png" />
			</div>
			<div class="heg">
				<img src="image/commodity/073.png" />
			</div>
			<div class="heg">
				<img src="image/commodity/074.png" />
			</div>
			<div class="heg">
				<img src="image/commodity/075.png" />
			</div>
		</div>
	</div>
	<div class="afooter">
		<%@include file="endshop.jsp"%>
	</div>
	<%
		}
	%>

</center>
</body>