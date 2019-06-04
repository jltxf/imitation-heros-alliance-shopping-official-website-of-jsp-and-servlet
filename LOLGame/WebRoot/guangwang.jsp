<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>进入官网</title>
<script type="text/javascript" src="js/index1.js"></script>
<style>
body{
	font: normal 12px/1.6em Microsoft YaHei,Tahoma,simsun;
    color: #666;
    min-width: 1240px;
    margin: 0 auto;
    background: #f7f8f8;
	}
.i{
	font-style: italic;
}
.header-close {
    height: 440px;
    background: url(image/06.jpg) no-repeat center 90px;
}
.header {
    overflow: hidden;
    transition: all .8s ease;
}
.content {
    padding-top: 40px;
    margin-top: -20px;
    background: #f7f7f7 url(image/bg-content-top.jpg) no-repeat center top;
}
.content-inner {
    background: url(image/bg-content-bottom-2018.jpg) no-repeat center bottom;
}
.layout {
    width: 1240px;
    margin: 0 auto;
}
.home-slide {
    position: relative;
}
.title{
	background-repeat: no-repeat;
	position: absolute;
	width: 100%;
	height: 870px;
	overflow: hidden;
	left:-30px;
	top: -100px;
}
.main{
	width:1400px;
	height:90px;
	overflow:hidden;
	zoom:1;
}
.main a{
	display:block;
	width:100%;
	padding-top:10px;
	text-align:center;
	color:#fafafa;
	font-size:25px;
	text-decoration:none;
}
.main span{
	display:block;
	font-size:15px;
	color:#838383;
	font-family:'Tahoma';
	text-transform:uppercase;
}
.main li{
	float:left;
	width:150px;
	height:90px;
}
.top-inner{
	position:relative;
	
}
.top{
	z-index:20;
	position:relative;
	top:-10px;
	right:50px;
	width:102.5%;
	height:100px;
	background:#0b0b0b

}
.wrap{
	position:relative;
	right:-200px;
	margin-left:200px;
	float:left;
	width:600px;
	height:-100px;
}
.logo{
	position:absolute;
	z-index:11;
	top:5px;
}
.top-user-unlogin{
	position: relative;
	left:-50px;
	font-size: 18px;
    color: #fff;
    padding: 5px 0;
}
.menu {
    position: relative;
    z-index: 2;
	right:300px;
    width: 102.5%;
    height: 80px;
    border-top: 2px solid #8c6c2d;
    
	
}
.menu-inner {
    height: 60px;
}
.layout {
    width: 1240px;
    margin: 0 auto;
}
.menu .cur {
	left:-100px;
    color: #d1ab57;
    border-bottom: 2px solid #d1ab57;
}
.menu li {
    float: left;
    width: 200px;
    height: 58px;
    line-height: 58px;
    border-bottom: 2px solid transparent;
    font-size: 20px;
    color: #555555;
    text-align: center;
    cursor: pointer;
	display:inline-block;
}
.mid2 {
    float: left;
    position: relative;
	right:-10px;
    width: 820px;
    height: 400px;
    margin-right: 20px;
    margin-bottom: 60px;
    overflow: hidden;
}
.midAD {
    width: 512px;
    height: 243px;
    float: left;
}
.midADbtn {
    width: 80px;
    height: 19px;
    position: absolute;
    left: 330px;
    top: 800px;
}
.midbtnA {
    display: block;
    width: 20px;
    height: 19px;
    float: left;
    background: url(image/mainspr.png) no-repeat -713px -45px;
}
.side-nav {
    float: left;
	 position: relative;
	right:-20px;
    width: 400px;
    height: 400px;
}
.side-download {
    position: relative;
    display: block;
    width: 100%;
    height: 150px;
    margin-bottom: 10px;
    background: url(image/bg-download.jpg) no-repeat 0 0;
}
.side-menu {
    margin-left: -5px;
}
.side-menu li {
    float: left;
    width: 130px;
    height: 55px;
    margin-left: 5px;
    margin-top: 5px;
}
.side-menu a {
    display: block;
    width: 130px;
    height: 55px;
    line-height: 55px;
    background: #fff;
    text-align: center;
    font-size: 14px;
    color: #555555;
}
.side-nav-download {
    display: block;
    width: 100%;
    height: 150px;
    position: absolute;
    left: 0;
    top: 0;
    text-indent: -999em;
    overflow: hidden;
}
.news {
    float: left;
    width: 700px;
    margin-right: 20px;
    margin-bottom: 60px;
}
.tab {
    position: relative;
    height: 50px;
    border-bottom: 3px solid #ededee;
}
.tab-title {
    float: left;
    font-size: 26px;
    line-height: 50px;
    color: #404040;
    margin-right: 40px;
    font-weight: normal;
}
.tab-nav {
    float: left;
    margin-top: 14px;
    position: relative;
    height: 36px;
}
.tab-nav .current {
    color: #d1ab57;
    font-weight: bold;
    border-bottom: 3px solid #d1ab57;
}
.news-list {
    padding: 24px 0 0;
}
.clearfix:after, .hd:after, .layout:after {
    content: '\20';
    display: block;
    height: 0;
    line-height: 0;
    visibility: hidden;
    clear: both;
}
.news-content .first {
    height: 124px;
    margin-bottom: 24px;
    overflow: hidden;
}
.news-item {
    height: 35px;
    line-height: 35px;
    padding: 4px 0;
}
.news-item .lnk-tit {
    display: block;
    position: relative;
    height: 35px;
    line-height: 35px;
    padding: 0 55px 0 90px;
    overflow: hidden;
    font-size: 16px;
    color: #555555;
}
.news-list .first .lnk-tit {
    color: #e9c06c;
}
.news-item .new-type {
    position: absolute;
    left: 0;
    top: 0;
    width: 68px;
    height: 35px;
    line-height: 35px;
    background: #ebebeb;
    text-align: center;
    color: #7a7a7a;
}
.hero {
	position:relative;
	top:50px;
	right:-100px;
    float: left;
    width: 400px;
}
.hero .bd {
    min-height: 420px;
}
.bd {
    overflow: hidden;
    zoom: 1;
}
.afooter {
    background: #0b0b0b;
    text-align: center;
	height:100px;
	position:relative;
	top:50px;
	left:0px;
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
</style>
</head>

<body style="zoom:1;">
<%@ include file="title.jsp"%>
   <div class="menu">
        <ul id="J_menu" class="menu-inner layout">
        <li></li>
        <li></li>
           <li id="J_menuHome" class="menu-item">&nbsp;&nbsp;&nbsp;综合资讯<i class="icon-update"></i></li>
           
         
            <li id="J_menuVideo" class="menu-item">&nbsp;&nbsp;&nbsp;视频中心<i class="icon-update"></i></li>
        
            <li id="J_menuHMatch" class="menu-item">    &nbsp;&nbsp;&nbsp;赛事中心<i class="icon-update"></i></li>
          
           <li id="J_menuAct" class="menu-item">  &nbsp;&nbsp;&nbsp; 活动中心<i class="icon-update"></i></li>
            
        </ul>
    </div>
    <div class="content">
    <div class="content-inner">
    <div class="layout"  style="overflow:hidden">
    <div class="home-slide">
    <div class="mid2">
      <div class="midAD">
        <a href="#"><img id="img1" src="image/01.jpg" style="display:block;"  /></a>
        <a href="#"><img id="img2" src="image/02.jpg" style="display:none;"  /></a>
        <a href="#"><img id="img3" src="image/03.jpg" style="display:none;"  /></a>
        <a href="#"><img id="img4" src="image/04.jpg" style="display:none;"  /></a>
      </div>
      <div class="midADbtn">
         <a class="midbtnA" onmouseover="show(1)"></a>
         <a class="midbtnA" onmouseover="show(2)"></a>
         <a class="midbtnA" onmouseover="show(3)"></a>
        <a class="midbtnA" onmouseover="show(4)"></a>
       </div>
       </div>
 <div class="side-nav">
 <div class="side-download">
 <a class="side-nav-download" href="#" target="_blank"></a>
 </div>
 <ul class="side-menu">
 <li>
 <a href="gameinfo.jsp" target="_blank">游戏资料</a>
 </li>
  <li>
 <a href="#" target="_blank">新手推荐</a>
 </li>
  <li>
 <a href="#" target="_blank">周边商城</a>
 </li>
  <li>
 <a href="#" target="_blank">官方微博</a>
 </li>
  <li>
 <a href="#" target="_blank">赛事互动</a>
 </li>
  <li>
 <a href="#" target="_blank">玩家论坛</a>
 </li>
 </ul>
 </div>
   <div class="home-mod news">
        <div class="tab news-top">
          <h3 class="tab-title">最新资讯</h3>
        </div>
    <a href="#" class="lnk-tit" title="玉剑传说短篇漫画"  target="_blank">
                <img src="image/pic-news.jpg">
                <img src="image/pic-news.jpg">
                <span class="news-first-title">玉剑传说短篇漫画</span><span class="news-first-desc"></span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="让一追二！《英雄联盟》中国队挺进决赛"  target="_blank"><span class="new-type">新闻</span>让一追二！《英雄联盟》中国队挺进决赛<span class="date">08/28</span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="英雄更新：雪原双子 努努"  target="_blank"><span class="new-type">新闻</span>英雄更新：雪原双子 努努<span class="date">08/28</span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="英雄更新：雪原双子 努努"  target="_blank"><span class="new-type">新闻</span>英雄更新：雪原双子 努努<span class="date">08/28</span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="英雄更新：雪原双子 努努"  target="_blank"><span class="new-type">新闻:</span>英雄更新：雪原双子 努努<span class="date">08/28</span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="英雄更新：雪原双子 努努"  target="_blank"><span class="new-type">新闻:</span>英雄更新：雪原双子 努努<span class="date">08/28</span></a>
</li>
<li class="news-item">
    <a href="#" class="lnk-tit" title="英雄更新：雪原双子 努努"  target="_blank"><span class="new-type">新闻:</span>英雄更新：雪原双子 努努<span class="date">08/28</span></a>
</li>

</div>
<div class="home-mod hero">
<div class="bd">
<img src="image/11.png" />
<img src="image/09.png" />
<img src="image/08.png" />
<img src="image/05.png" />
<img src="image/12.png" />
<img src="image/10.png" />

                               
                           
</div>
</div>
</div>
</div>
<div class="afooter">
<div class="wrap_ieg">
<p>
<a href="#" target="_blank">腾讯互动娱乐</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">服务条款</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">隐私政策</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">腾讯游戏招聘</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">腾讯游戏客服</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">游戏地图</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">成长守护平台</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">商务合作</a>"&nbsp;|&nbsp;"
<a href="#" target="_blank">网站导航</a>"&nbsp;|&nbsp;"
</p>
</div>
</div></div></div>

                           
 
         


</body>
</html>
