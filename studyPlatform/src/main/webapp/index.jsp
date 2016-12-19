<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
  <title>四川省名族地区两项资金项目申报管理系统</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.jqprint-0.3.js"></script>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/icons/iconextension.css">
<style type="text/css">
	.easyui-accordion ul {
  		list-style-type: none;
  		padding: 0px;
  		margin: 0px;
  	}
  	.easyui-accordion ul li {
  		margin: 5px;
		line-height: 24px;  		
  	}
  	.easyui-accordion ul li div {
  		border: 1px solid #99BBE8;
    	     background: #E0ECFF;
    	     cursor: pointer;
    }
</style>
<script type="text/javascript">
var _menus = {
		"menus":[{
			"menuid" : "1",
			"icon" : "icon-server_start",
			"menuname" : "项目申报",
			"menus" : [{
				"menuname":"填制项目卡",
				"icon" : "icon-bullet_right",
				"url" : "khmc.do"
			},{
				"menuname":"待推荐项目",
				"icon":"icon-bullet_right",
				"url": "yclrk.do"
			},{
				"menuname" : "复核上报项目",
				"icon" : "icon-bullet_right",
				"url" : "cpsj.do"
			}, {
				"menuname" : "项目申报汇总表",
				"icon" : "icon-bullet_right",
				"url" : "dyckd.do"
			},{
				"menuname" : "原始申报数据",
				"icon" : "icon-bullet_right",
				"url" : "dyckd.do"
			},{
				"menuname" : "接收数据备份",
				"icon" : "icon-bullet_right",
				"url" : "dyckd.do"
			}]
		},{
			"menuid" : "2",
			"icon" : "icon-server_start",
			"menuname" : "项目审批",
			"menus" : [{
				"menuname":"审核修改",
				"icon" : "icon-bullet_right",
				"url" : "khmc.do"
			}, {
				"menuname" : "未审批项目汇总",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			},{
				"menuname" : "所有列表",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			},{
				"menuname" : "审批项目汇总",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			}]
		},{
			"menuid" : "3",
			"icon" : "icon-server_start",
			"menuname" : "项目实施",
			"menus" : [{
				"menuname":"填写项目进度表",
				"icon" : "icon-bullet_right",
				"url" : "txjd.do"
			}, {
				"menuname" : "实施进度表",
				"icon" : "icon-bullet_right",
				"url" : "ssjd.do"
			},{
				"menuname" : "项目验收",
				"icon" : "icon-bullet_right",
				"url" : "xmys.do"
			}]
		},{
			"menuid" : "4",
			"icon" : "icon-server_start",
			"menuname" : "项目统计",
			"menus" : [{
				"menuname":"效益统计",
				"icon" : "icon-bullet_right",
				"url" : "khmc.do"
			}, {
				"menuname" : "按地区分类",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			},{
				"menuname" : "按类别统计",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			}]
		},{
			"menuid" : "5",
			"icon" : "icon-server_start",
			"menuname" : "信息报送",
			"menus" : [{
				"menuname":"上行报送",
				"icon" : "icon-bullet_right",
				"url" : "khmc.do"
			}, {
				"menuname" : "已报送信息",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			}]
		},{
			"menuid" : "6",
			"icon" : "icon-server_start",
			"menuname" : "系统管理",
			"menus" : [{
				"menuname":"系统设置",
				"icon" : "icon-bullet_right",
				"url" : "khmc.do"
			}, {
				"menuname" : "信息报送",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			},{
				"menuname" : "修改密码",
				"icon" : "icon-bullet_right",
				"url" : "jsgl.do"
			}]
		}]
};
</script>
</head>
<body class="easyui-layout"  style="overflow-y:hidden" scroll="no"><!--布局     表示没有垂直滚动条 -->
 	<div data-options="region:'north',border:false" style="overflow: hidden; height: 30px; background: url(images/layout-browser-hd-bg.gif) #7f99be repeat-x center 50%; line-height: 30px; color: #fff; font-family: Verdana, 微软雅黑, 黑体">
 		<span style="float: right; padding-right: 20px;" class="head">欢迎admin</span>
 		<span style="padding-left: 10px; font-size: 16px;">
		<img src="images/blocks.gif" width="20" height="20" align="absmiddle" />四川省名族地区两项资金项目申报管理系统
		</span>
 	</div>
 	<div data-options="region:'west',width:180,title:'导航菜单',collapsible:true">
 		<div class="easyui-accordion" data-options="fit:false,border:false"></div><!--分类 -->
 	</div>
 	<div data-options="region:'center'" style="overflow:hidden">
 		<div class="easyui-tabs" data-options="fit:true">
 			<div title="欢迎" style="padding:20px;overflow:hidden">
 				<h1>欢迎,admin</h1>
 			</div>
 		</div>
 	</div>
 	
 </body>
</html>