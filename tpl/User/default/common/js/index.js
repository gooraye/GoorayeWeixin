function initComponent(){
	fixedMenu(".fixedMenu",100);
}

/*返回顶部js*/
function totop(){

}
/* alert 样式js */
function alertRewrite(){
	/* TODO */
}

/* 固定菜单 */
function fixedMenu(selector,offsetTop){
	selector = selector || ".fixedMenu";
	offsetTop = offsetTop || 100;
	$fixedMenu = $(selector);
	// console.log($fixedMenu);
	$(window).scroll(function () {     //浏览器滚动条滚动时触发的事件
	     	//设置你的导航条相对定位于顶部即可   
	     	$fixedMenu;
	     	if($(document).scrollTop() > offsetTop){
	     		$fixedMenu.css("position","fixed");
	     	}else{
			$fixedMenu.css("position","relative");
	     	}
	 });
}
