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
  <title>实施进度表</title>
</head>
<body>
<script type="text/javascript">
	$(document).ready(function(){
		setYear();
	});
	//设置下拉框显示的年份
	function setYear(){
		nowYear=new Date().getFullYear();
		var value="<option>请选择年份</option>";
		for(var i=-10;i<=0;i++){
			value+="<option >"+(nowYear+i)+"</option>"
		}
		$("#pro_year").append(value);
	}
	
	function selectProgress(){
		var year=$("#pro_year").find("option:selected").val();
		alert(year);
	}
	//显示项目进度统计表
	function showTable(){
 		var tabs = $(".easyui-tabs").tabs("getSelected");
		  if (tabs) {
			  //刷新面板来装载远程数据。如果'href'属性有了新配置，它将重写旧的'href'属性。
			  tabs.panel("refresh","pratice/getProgressTable.do");
		  }
 	}
	//显示项目进度统计图表
	function showPicture(){
		var tabs=$(".easyui-tabs").tabs("getSelected");
		if(tabs){
			tabs.panel("refresh","pratice/getProgressPicture.do");
		}
	}
</script>
	<div class="easyui-panel" title="实施进度表" >
	<div style="height: 30px;line-height: 30px;text-align: center;">
		单位:<span>攀枝花市     仁和区</span>
		&nbsp;&nbsp;&nbsp;&nbsp;年份:<select  id="pro_year" ></select>&nbsp;<a id="btn" href="javascript:void(0);" onclick="javascript:selectProgress()" class="easyui-linkbutton" data-options="iconCls:'icon-search',plain:true">查询</a>
	</div>
 	<table id="dg_ssjd" class="easyui-datagrid" data-options="fitColumns:true,fit:true,toolbar:'#d1',pagination:true,pageSize:10">
  	<thead>
  		<tr>
  			<th data-options="field:'ck',width:100,checkbox:true"></th>
			<th data-options="field:'progress_department',width:100">填报单位</th>
			<th data-options="field:'pro_name',width:100">项目名称</th>
			<th data-options="field:'progress_ok',width:100">是否到位</th>
			<th data-options="field:'progress_place_status',width:100">是否启动</th>
			<th data-options="field:'progress_finish',width:100">完成进度</th>
			<th data-options="field:'operation1',width:100">修改</th>
			<th data-options="field:'operation2',width:100">统计表</th>
  		</tr>
  	</thead>
  </table>
  <!-- 给datagrid添加toolbar -->
  <div id="d1" style="padding:5px;height:auto;">
	<a href="javascript:void(0);" class="easyui-linkbutton" onclick="javascript:showTable()" data-options="iconCls:'icon-add',plain:true">查看统计表</a>
	<a href="javascript:void(0);" class="easyui-linkbutton" onclick="javascript:showPicture()" data-options="iconCls:'icon-remove',plain:true">查看统计表(图表)</a>
  </div>
  </div>		
</body>
</html>