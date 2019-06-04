window.onload = function() {
	show();
};

// 显示图片
var nowFrame = 1; // 当前图片
var maxFrame = 4; // 最后的图片
function show(curDiv) {
	if (Number(curDiv)) {
		clearTimeout(theTimer); // 当触动按扭时，清除计时器
		nowFrame = curDiv; // 设当前显示图片
	}
	for ( var i = 1; i <= maxFrame; i++) {
		// 循环设置4个图片显示
		document.getElementById('img' + i).style.display = (i == nowFrame) ? 'block'
				: 'none'; // 当前图片显示
	}
	if (nowFrame == maxFrame) { // 设置下一个显示的图片
		nowFrame = 1;
	} else {
		nowFrame++;
	}
	theTimer = setTimeout('show()', 5000); // 设置定时器，显示下一张图片
}
