<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<<style>

/*-主体内容-*/
.mainbar{background:#FFF; height:auto; padding-top:16px; }
.bottom{min-width:1280px;background:url(../images/bottom_bj.jpg)  left top repeat-x; height:402px;}
.bottomshop{width:1190px; height:402px; margin:0px auto;}
.fuwubar{padding-top:28px;background:#fff; height:70px;}
.fuwu{ padding-left:110px; width:940px; margin:0px auto;}
.fuwu li{float:left;}
.fuwu li a{display:block; line-height:52px; height:52px; float:left; color:#222; font-size:14px; cursor:default;}
.fuwu li a.fu1{width:240px;}
.fuwu li a.fu2{width:228px;}
.fuwu li a.fu3{width:228px;}
.fuwu li a.fu4{width:160px;}
.fuwu li a:hover{color:#000; text-decoration:none;}
.fuwu li span{display:block; width:42px; height:52px; float:left;}
.fuwu li span.fw1{background:url(../images/base/base.png) no-repeat -10px -234px;}
.fuwu li span.fw2{background:url(../images/base/base.png) no-repeat -73px -234px;}
.fuwu li span.fw3{background:url(../images/base/base.png) no-repeat -125px -234px;}
.fuwu li span.fw4{background:url(../images/base/base.png) no-repeat -179px -234px;}
.help{padding-left:22px; margin-top:20px; color:#666;}
.help li{height:166px; float:left; padding-top:4px; padding-left:16px;}
.help li h3{display:block; line-height:30px; font-size:16px; color:#d6d6d6; font-weight:normal;}
.help li h3 a{line-height:30px; font-size:16px; color:#222; text-indent:0px; background:none;}
.help li h3 a:hover{color:#000; background:none;}
.help li span{text-indent:10px; font-size:12px;  color:#666; display:block; line-height:28px;}
.help li div.fuwu_qq{text-indent:0px; padding-left:10px; font-size:12px;  color:#666; display:block; line-height:28px;}
.help li div.fuwu_qq a{text-indent:0px; font-size:12px;  color:#666; display:inline; line-height:28px; background:none;}
.help li div.fuwu_qq a:hover{background:none;  color:#999;}
.help li a{text-indent:10px; font-size:12px;  color:#666; display:block; line-height:28px;}
.help li a:hover{color:#999;}
.help li.he_w1{ width:266px;}
.help li.he_w2{ width:254px;}
.help li.he_w3{ width:254px;}
.help li.he_w4{}
.help li a.font12{font-size:12px;}
.help li a.fontfff{color:#fff; cursor:inherit;}
.bottomlink{border-top:1px solid #e9e9e9; border-bottom: 1px solid #e9e9e9;margin-top:25px; text-align:center;}
.bottomlink a{color:#666; padding-right:20px; line-height:40px;}
.bottomlink a:hover{color:#999;}
.bottom .foot{ width:740px; height:auto; margin:20px auto 20px; line-height:20px;}
.bottom .bqlogo{background:url(../images/base/base.png) no-repeat -10px -290px; width:246px; height:46px; border-right:#e9e9e9 solid 1px;
}
.bottom .copyright{ width:470px; height:40px; margin:4px 0 0 16px; color:#666;}
.bottom a{color:#666;}
.bottom a:hover{color:#999;}
</style>
<!--[if !IE]>底部<![endif]-->
<div class="bottom">
    <div class="bottomshop">
        <div id="bottomshop">
            <div class="fuwubar w980">
                <ul class="fuwu clearfix">
                    <li><span class="fw1"></span><a class="fu1">7天无理由退换货</a></li>
                    <li><span class="fw2"></span><a class="fu2">100%官方正品</a></li>
                    <!--<li><span class="fw3"></span><a class="fu3">购物送游戏礼包</a></li>-->
                    <li><span class="fw4"></span><a class="fu4">全场每单满199元包邮</a></li>
                </ul>
            </div>
            <div class="helpbar w980">
                <ul class="help clearf">
                    <li class="he_w1">
                        <h3><a href="/help/helpAfterSale.shtml#help1" target="_blank">购物指南</a></h3>
                        <a href="/help/helpAfterSale.shtml#help1" target="_blank">帐号注册与登录</a>
                        <a href="/help/helpAfterSale.shtml#help2" target="_blank">购买流程介绍</a>
                        <a href="/help/helpAfterSale.shtml#help3" target="_blank">支付方式</a>
                        <a href="/help/helpAfterSale.shtml#help4" target="_blank">常见问题</a>
                    </li>
                    <li class="he_w2">
                        <h3><a href="/help/helpShopping.shtml#help1" target="_blank">配送服务</a></h3>
                        <a href="/help/helpShopping.shtml#help1" target="_blank">全场满199元免运费</a>
                        <a href="/help/helpShopping.shtml#help2" target="_blank">配送范围及运费</a>
                        <a href="/help/helpShopping.shtml#help3" target="_blank">配送进度查询</a>
                        <!--<a href="#" target="_blank">微信配速查询</a>-->
                    </li>
                    <li class="he_w3">
                        <h3><a href="/help/helpExpress.shtml#help1" target="_blank">售后服务</a></h3>
                        <a href="/help/helpExpress.shtml#help1" target="_blank">7天无理由退换货</a>
                        <a href="/help/helpExpress.shtml#help5" target="_blank">退换货流程</a>
                        <a href="/help/helpExpress.shtml#help3" target="_blank">商品送错的处理方案</a>
                        <a href="/help/helpExpress.shtml#help4" target="_blank">售后服务及投诉</a>

                    </li>
                    <li class="he_w4">
                        <h3><a href="/help/helpIndex.shtml" target="_blank">服务中心</a></h3>
                        <div class="fuwu_qq"><a id="qq_qianfw">售前咨询</a>&nbsp;&nbsp;<a id="qq_houfw">售后咨询</a></div>
                        <span>客服热线：0755-25727866</span>
                        <!--<span>客服热线：0755-82112581</span>-->
                        <a href="mailto:service@lolriotmall.qq.com">售后：service@lolriotmall.qq.com</a>
                    </li>
                </ul>
            </div>
            <div class="bottomlink w980">
                <a href="/help/helpabouts.shtml#help5">关于商城</a>
                <a href="/help/helpabouts.shtml#help4">服务条款</a>
                <a href="/help/helpabouts.shtml#help3">合作伙伴</a>
                <a href="/help/helpabouts.shtml#help2">法律声明</a>
                <!--<a href="/help/helpabouts.shtml#help1">商务合作</a-->
            </div>
            <div class="foot clearf">
                <div class="bqlogo fl"></div>
                <div class="copyright fl">
                    深圳市合泰文化发展有限公司提供客服支持 |  客服邮箱：
                    <a href="mailto:service@lolmall.qq.com">service@lolriotmall.qq.com</a>
                    <br>
                    Copyright (C) 1998 – 2018 Tencent. All Rights Reserved.腾讯公司 版权所有
                </div>
            </div>
        </div>
    </div>
</div>