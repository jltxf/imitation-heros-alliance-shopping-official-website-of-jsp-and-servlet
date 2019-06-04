<%@ page language="java" import="java.util.*,dao.*,servlet.*,model.*"
	pageEncoding="UTF-8"%>
<%@include file="title.jsp"%>

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
.shop {
	width: 880px;
	position: relative;
	left: 50px;
	margin-top: 50;
	margin-bottom: 30px;
}

.shop .cente {
	width: 880px;
}

.cente ul {
	height: 43px;
	background: #efefef;
	color: #000;
	width: 880px;
}

.shop  .cente li {
	line-height: 43px;
	align: center;
	font-size: 14px;
	display: inline-block;
}

.shop .cente .d1 {
	width: 340px;
	font-align: left;
}

.shop .cente .d2 {
	width: 100px;
	font-align: left;
}

.shop .cente .d3 {
	width: 152px;
}

.shop .cente .d4 {
	width: 80px;
}

.shop .cente .d5 {
	width: 130px;
}

.shup {
	width: 1200px;
}

.shup .shob {
	width: 950px;
	position: relative;
	left: 50px;
	border: 1px solid #c8c8c8;
	display: block;
}

.shup .shob ul {
	height: 88px;
	color: #000;
}

.shup .shob li {
	line-height: 43px;
	align: center;
	font-size: 14px;
	display: inline-block;
}

li {
	display: inline-block;
}

.shup .shob .cdx {
	width: 8px;
	width: 8px;
	position: relative;
	bottom: 40px;
	right: 8px;
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
	width: 252px;
	position: relative;
	bottom: 45px;
}

.shup .shob .mb {
	position: relative;
	bottom: 45px;
}

.shup .shob .pri {
	width: 70px;
	font-align: left;
}

.shup .shob .cmb {
	width: 182px;
	bottom: 55px;
}

.shup .shob .cmb span {
	float: left;
	color: #3d4145;
	display: block;
	font-size: 14px;
	position: relative;
	top: 25px;
	bottom: 25px;
}

.shup .shob .cmb .size {
	width: 20px;
	height: 34px;
	border: 1px solid #dcdcdc;
	text-align: center;
	line-height: 34px;
}

.shup .shob .cmb span .pfd {
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

.shup .shob .num {
	width: 152px;
}

.shup .shob .mnb {
	width: 80px;
}

.shup .shob .nmm {
	width: 70px;
}

.xsx {
	width: 276px;
	float: right;
	position: relative;
	border: 1px solid #cacaca;
	background: #F0F0F0;
}

.xsx .xss {
	width: 276px;
	position: relative;
	left: 10px;
	padding-bottom: 5px;
}

.xsx .xsd {
	width: 266px;
	float: center;
	background: #fff;
	border: 1px solid #cacaca;
	background: #fff;
}

.xsx .xsf {
	width: 200px;
	position: relative;
	left: 10px;
	padding-bottom: 5px;
	color: red;
}

.xsx .xax {
	width: 200px;
	position: relative;
	left: 10px;
	padding-bottom: 5px;
	padding-top: 5px;
}

.xsx .max {
	width: 100px;
	position: relative;
	left: 10px;
	padding-bottom: 5px;
	padding-top: 5px;
}

.xsx .mav {
	width: 100px;
	position: relative;
	left: 10px;
	padding-bottom: 5px;
	padding-top: 5px;
	color: red;
}

.xsx .ssx {
	width: 266px;
	float: center;
}

.xsx .dds {
	width: 158px;
	height: 48px;
	line-height: 48px;
	color: #FFF;
	display: block;
	background: #ed3029;
	font-size: 18px;
	text-align: center;
}

.xsx .dds:hover {
	background: #F06;
}

.shop ul {
	list-style-image: none;
	list-style-position: outside;
	list-style-type: none;
}

.shup ul {
	list-style-image: none;
	list-style-position: outside;
	list-style-type: none;
}

.afooter {
	text-align: center;
	height: 100px;
	position: relative;
	top: 558px;
	left: 0px;
}
</style>




<div class="shop">
	<div class="cente">
		<ul>

			<li class="d1">商品数量</li>
			<li class="d2">单价(元)</li>
			<li class="d3">数量</li>
			<li class="d4">小计</li>
			<li class="d5">操作</li>
		</ul>
	</div>
</div>

<div class="shup">

	<script type="text/javascript">
		function ock() {
			$('#btn').trigger("click");
		}
		function ocb() {
			$('#btk').trigger("click");
		}
	</script>


	<%
		String usern = (String) session.getAttribute("username2");
		CartsDAO rt = new CartsDAO();
		List<Carts> list = rt.getCartsById(usern);
		CommodityDAO com = new CommodityDAO();
	%>
	<%
		for (Carts cs : list) {
			Commodity co = com.getCommodityByName(cs.getName());
	%>
	<form action="ShopServlet">
		<div class="shob">

			<ul>
				<li class="cdx"><input type="checkbox" name="idx"
					value="<%=cs.getId()%>">
				</li>

				<li class="ims"><img
					src="image/commodity/<%=co.getPicture1()%>" /></li>

				<li class="nam"><a
					href="browserServlet?id=one&no=<%=String.valueOf(co.getId())%>"><%=co.getName()%></a>
				</li>
				<li class="pri mb"><%=co.getPrice()%></li>


				<li class="cmb mb"><span><input type="text" id="number"
						name="number" value="<%=cs.getNum()%>" size="2" class="pfd" />
				</li>

				<li class="mnb mb"><%=co.getPrice() * cs.getNum()%></li>
				<li class="nmm mb"><a
					href="CartServlet?action=delete&id=<%=cs.getId()%>"
					onclick="delcfm();">删除</a>
				</li>
			</ul>
		</div>
		<%
			}
		%>

		<div class="cxdly"></div>
		<div class="xsx">
			<span class="xss">我的购物车</span>
			<div class="xsd">


				<div class="ssx">
					<input type="submit" value="结算" onclick="OK()" class="dds" />
				</div>

			</div>


		</div>
	</form>
</div>

<div class="afooter">
	<%@include file="endshop.jsp"%>
</div>
<!--循环的结束-->

