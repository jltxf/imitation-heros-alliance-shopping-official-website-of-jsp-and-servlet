<%@ page language="java" import="java.util.*" pageEncoding="GB18030"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title></title>
<script src="http://lib.sinaapp.com/js/jquery/1.9.1/jquery-1.9.1.min.js"></script>
<script src="layer/layer.js"></script>
<style>
.center{
   position:relative;
   right:-700px;
   top:300px;



}
</style>
</head>
<body>
	<div  class="center" id="box">
		<video id="video" controls preload="auto" width="400px" height="300px" autoplay controls >
			<source src="http://movie.ks.js.cn/flv/other/1_0.mp4"
				type="video/mp4"></source>

		</video>
	</div>
	<script>
		layer.open({
			type : 1,
			title : false,
			shadeClose : true,
			area : [ '400px', '350px' ],
			content : $('#box'),
			success : function(layero) {
				//layer样式layer-anim导致全屏样式错乱，移除该样式即可
				setTimeout(function() {
					$(layero).removeClass('layer-anim');
				}, 0);
			}
		});
	</script>
</body>
</html>
