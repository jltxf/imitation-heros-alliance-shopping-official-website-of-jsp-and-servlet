<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
   
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
<link rel="stylesheet" type="text/css" href="css/herostyle.css">

  </head>
  <style>
  .clearfix:after, .hd:after, .layout:after {
    content: '\20';
    display: block;
    height: 0;
    line-height: 0;
    visibility: hidden;
    clear: both;
}
.cdkbox {
    padding: 40px;
    width: 800px;
}
.pageleftbox {
    background: #fff;
}
.pageleftbox, .pageleftbox2 {
    float: left;
    width: 680px;
}
.title1 {
    font-size: 16px;
    color: #287D7C;
    padding-left: 30px;
    padding-bottom: 10px;
    background-position: -965px 0;
    }
    .sub_spr {
    background: url(image/sprdown.png) no-repeat;
}
.downinfo {
    word-spacing: 5px;
}
p {
    display: block;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
}
.pr10{
    width:800px;
    height:174px;
}

 .down-news {
    color: #00A383;
    font-weight: bold;
}
a {
    text-decoration: none;
}
.ofh {
    overflow: hidden;
    zoom: 1;
}
.downlst {
    padding-right: 8px;
    margin: 10px 0 35px;
}
.fl {
    float: left;
    display: inline;
}
.dxzq {
    background-position: 0 0;
}
.downbtn {
    display: block;
    width: 192px;
    height: 63px;
    overflow: hidden;
    text-indent: -999em;
    cursor: pointer;
}
.kongbai{
  width:700px;
  height:23px;
  background:#fff;
}
.media {
    word-spacing: 5px;
    color: #D1D1D1;
}

.zm, .media {
    margin-bottom: 25px;
    padding-bottom: 20px;
}
.media a {
    color: #555;
}
.afooter {
	background: #0b0b0b;
	text-align: center;
	height: 100px;
	position: relative;
	top: 50px;
	left: 0px;
}

.afooter .wrap_ieg {
	width: 1900px;
	margin: 0 auto;
	padding: 30px 0;
}

.afooter a {
	color: #6e6e6e;
	font-size: 12px;
}

.afooter p {
	color: #6e6e6e;
	line-height: 24px;
	font-size: 10px;
}
.pagesubside {
    float: right;
    width: 270px;
}
.app-link{
    width:270px;
    height:115px;
}
.subggbox {
    width: 258px;
    height: 270px;
    border: 1px solid #E1E1E1;
    background: url(image/page-subgg.jpg);
}
.subggbox a {
    display: block;
    height: 69px;
    overflow: hidden;
    text-indent: -999em;
}
</style>
  
  
  
  <body>
  <%@ include file="title.jsp"%>
  <div class="layout mainer">
  <div id="Navi" class="navi">
			<i class="commspr commico-crumbs"></i> <a href="index.jsp">英雄联盟首页</a>
			<i class="commspr commico-rrow"></i> <span id="download">下载游戏</span>
		</div>
		
		<div class="clearfix">
		<div class="colbox pageleftbox cdkbox">
		<h2 class="title1 title_client ">
		<span class="hdn"><font size="5">最新客户端下载(
		<span>8.16</span>
		)
		</font>
		</span></h2>
		<div class="pr10">
		<p class="downinfo">&nbsp;&nbsp;&nbsp;&nbsp;当前版本：4.1.0.4 | 更新日期：2018-09-04 | 文件大小：7.3GB</p>
		<p><a class="down-news" target="_blank" href="#"><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【查看最新版本公告】</font></a></p>
		<ul class="ofh">
				<li class="downlst fl"><a href="http://down.qq.com/lol/dltools/LOL_V4.1.0.4_FULL_0_tgod_signed.exe"  class="downbtn dxzq blk sub_spr"><strong class="hdn">高速下载器</strong></a></li>
			</ul>
			<p style="margin-top: -20px;margin-bottom: 20px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重要提醒：如果使用Chrome（谷歌）浏览器无法下载，请切换IE或其他浏览器下载。</p>
		</div>
		<div class="kongbai"></div>
		
		<h2 class="title1 title_client ">
		<span class="hdn"><font size="5">最新补丁下载
		</font>
		</span></h2>
		<div class="pr10">
		<p class="downinfo">&nbsp;&nbsp;&nbsp;&nbsp;当前版本：v4.1.0.3-v4.1.0.4升级补丁 | 适用用户：<span id="match">V4.1.0.3</span> | 更新日期：2018-09-04 | 文件大小：4812MB</p>
		<p><a class="down-news" target="_blank" href="#"><font size="3">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;【查看最新版本公告】</font></a></p>
		<ul class="ofh">
				<li class="downlst fl"><a href="http://down.qq.com/lol/dltools/LOL_V4.1.0.3-V4.1.0.4_PATCH_0_tgod_signed.exe"  class="downbtn dxzq blk sub_spr"><strong class="hdn">高速下载器</strong></a></li>
			</ul>
			
			<p style="margin-top: -20px;margin-bottom: 20px; font-weight: bold;">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;重要提醒：如果使用Chrome（谷歌）浏览器无法下载，请切换IE或其他浏览器下载。</p>
		</div>
		<div class="kongbai"></div>
		<h2 class="title1 title_client ">
		<span class="hdn"><font size="5">合作媒体下载
		</font>
		</span></h2>
		<div class="media spr10">
		<a target="_blank"  href="#">&nbsp;&nbsp;&nbsp;&nbsp;腾讯游戏频道</a>
		
	| 
	<a target="_blank"  href="#">17173</a>
	| 
	<a target="_blank"  href="#">U9</a>
		| 
		<a target="_blank"  href="#">52PK</a>
		| 
		</div>
		<div class="kongbai"></div>
		<h2 class="title1 title_client ">
		<span class="hdn"><font size="5">体验服和比赛服下载
		</font>
		</span></h2>
		<div class="media spr10">
		<a target="_blank"  href="#">&nbsp;&nbsp;&nbsp;&nbsp;体验服</a>
		
	| 
	<a target="_blank"  href="#">比赛服</a>
	| 
		</div>
		<div class="kongbai"></div>
		<h2 class="title1 title_client ">
		<span class="hdn"><font size="5">游戏所需配置设置
		</font>
		</span></h2>
		<div class="media spr10">
		<img src="image/pic-down.jpg">
		</div>
		</div>
		<div class="pagesubside">
				<div class="app-link">
	<a href="#" target="_blank" ><img src="image/ewm_page_right.png"></a>
</div>
<div class="app-link" style="margin-bottom: 20px;">
    <img src="image/wx.jpg" width="260" height="109">
</div>
<div class="subggbox">
	<a href="postinfo.jsp" target="_blank" title="官方论坛">官方论坛</a>
	<a href="http://qt.qq.com/go.html?roomid=101" target="_blank" title="官方QT房间">官方QT房间</a>
	<a href="http://weibo.com/lol" target="_blank" title="官方微博">官方微博</a>
      <a href="shop.jsp" target="_blank" title="周边商城">周边商城</a>
</div>
		</div>
		</div>

		</div>
		<div class="afooter">
		<div class="wrap_ieg">
			<p>
				<a href="#" target="_blank">腾讯互动娱乐</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">服务条款</a>"&nbsp;|&nbsp;" <a href="#" target="_blank">隐私政策</a>"&nbsp;|&nbsp;"
				<a href="#" target="_blank">腾讯游戏招聘</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">腾讯游戏客服</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">游戏地图</a>"&nbsp;|&nbsp;" <a href="#" target="_blank">成长守护平台</a>"&nbsp;|&nbsp;"
				<a href="#" target="_blank">商务合作</a>"&nbsp;|&nbsp;" <a href="#"
					target="_blank">网站导航</a>"&nbsp;|&nbsp;"
			</p>
		</div>
		</div>
		</body>
