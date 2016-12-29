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
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath }/easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/easyui/themes/icon.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/icons/iconextension.css">
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/easyui/locale/easyui-lang-zh_CN.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/index.js"></script>
<script type="text/javascript" src="http://code.jquery.com/jquery-migrate-1.1.0.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/js/jquery.jqprint-0.3.js"></script>
<title>效益统计</title>
</head>
<body>


<script>
	//获取当前年份
	var date=new Date;
	var nowYear=date.getFullYear(); 
	
	for(i=nowYear;i>=2000;i--){
		$("#dgYear").append("<option>"+i+"</option>");
	}
	$('#dgYear').change(function(){ 
		console.log($('#dgYear option:selected').val());
		$('#dg').datagrid({   
			
			
		    url:"stat/getStatList/"+$('#dgYear option:selected').val()+".do",    
		 
		})
	})
	
	function operation(value,row,index) {
		var a = "";
		if (row.stat_id==null){
			a+= "<a  href='javascript:void(0);' onclick='addStat("+row.pro_id+",\""+row.pro_name+"\")'>添加</a>";
		}
		else{
			a += "<a href='javascript:void(0);' onclick='editStat("+row.pro_id+",\""+row.stat_id+"\",\""+row.pro_name+"\",\""+row.stat_assi_money+"\",\""
			a += row.stat_real_money +"\",\""+row.stat_amount+"\")'>编辑</a>";
	}
		return a;
	}
	
		$('#dg').datagrid({   
		    url:"stat/getStatList/"+nowYear+".do",    
		    columns:[[    
		        {field:'pro_name',title:'项目名称',width:100},    
		        {field:'stat_assi_money',title:'补助资金',width:100},    
		        {field:'stat_real_money',title:'到位资金',width:100},
		        {field:'stat_amount',title:'受益户数',width:100},
		        {field:'operation',title:'操作',width:100,formatter:operation}
		    ]],fit:true,
		    fitColumns:true,
		    rownumbers:true,
		    pagination:true,
		    pageSize:10,
		    title:'效益统计',
		    toolbar: '#dgtb'
		    
		})
	//添加统计信息
	function addStat(pro_id,pro_name) {
			console.log(pro_id);
  		$("#dlg_addStat").dialog("open");
  	 	$("#dlg_addStat_pro_name").val(pro_name);
  		$("#dlg_addStat_pro_id").val(pro_id);
  	}
	
	//编辑工程统计
	function editStat(pro_id,stat_id,pro_name,stat_assi_money,stat_real_money,stat_amount){
  		$("#dlg_editStat").dialog("open");
  		$("#dlg_editStat_pro_name").val(pro_name);
  		$("#dlg_editStat_stat_id").val(stat_id);
  		$("#dlg_editStat_stat_real_money").val(stat_real_money);
  		$("#dlg_editStat_stat_assi_money").val(stat_assi_money);
  		console.log(stat_amount);
  		$("#dlg_editStat_stat_amount").val(stat_amount);
  	}
	
	function editOK(){
		{
			console.log("点击事件");
			$.post("stat/editStat/"+$('#dlg_editStat_stat_id').val()+"/"+$('#dlg_editStat_stat_assi_money').val()+"/"+$('#dlg_editStat_stat_real_money').val()+"/"+$('#dlg_editStat_stat_amount').val()+".do",function(data){
				if(data==1){
					$("#dg").datagrid("reload");
					$("#dlg_editStat").dialog('close');
				}
				else{
					$.messager.alert('提示', '编辑失败请检查数据是否正确');
				}
			},"text")
		}
	}
	
	function addOK(){
		{
			console.log("点击事件");
			$.post("stat/addStat/"+$('#dlg_ Stat_pro_id').val()+"/"+$('#dlg_addStat_stat_assi_money').val()+"/"+$('#dlg_addStat_stat_real_money').val()+"/"+$('#dlg_addStat_stat_amount').val()+".do",function(data){
				if(data==1){
					$("#dg").datagrid("reload");
					$("#dlg_addStat").dialog('close');
				}
				else{
					$.messager.alert('提示', '添加失败请检查数据是否正确');
				}
			},"text")
		}
	}
	
</script>	
	<div class="easyui-panel" data-options="fit:true">
		<table id="dg" >
			
	  	</table>
  	</div>
  <!-- 	datagride的toolBar -->
  <div id="dgtb" align="center">
  	查询年份:<select type="text" id="dgYear">
  	</select>
  </div>
  	
  	
<!-- 添加效益统计数据 -->
  	<div id="dlg_addStat" class="easyui-dialog" data-options="title:'添加统计数据',modal:true,iconCls:'icon-add',width:300,closed:true,buttons:'#dlg_addStat_buttons'" style="text-align:center;">
  		<table>
  			<tr>
  				<td>工程名称</td><td><input id="dlg_addStat_pro_name" disabled="disabled"><input id="dlg_addStat_pro_id" hidden="true"></td>
  			</tr>
  			<tr>
  				<td>补助资金</td><td><input id="dlg_addStat_stat_assi_money"></td>
  			</tr>
  			<tr>
  				<td>到位资金</td><td><input id="dlg_addStat_stat_real_money"></td>
  			</tr>
  			<tr>
  				<td>受益户数</td><td><input id="dlg_addStat_stat_amount"></td>
  			</tr>
  		</table>
  	</div>
<!--   添加效益统计数据的按钮 -->
	<div id="dlg_addStat_buttons">
	  	<a href="javascript:void(0);" id="addStat_ok" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="addOK()">确定</a>
	  	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="javascript:$('#dlg_addStat').dialog('close');">取消</a>
  	</div>

<!-- 编辑效益统计数据 -->
  	<div id="dlg_editStat" class="easyui-dialog" data-options="title:'添加统计数据',modal:true,iconCls:'icon-add',width:300,closed:true,buttons:'#dlg_editStat_buttons'" style="text-align:center;">
  		<table>
  			<tr>
  				<td>工程名称</td><td><input id="dlg_editStat_pro_name" disabled="disabled"><input id="dlg_editStat_stat_id" hidden="true"></td>
  			</tr>
  			<tr>
  				<td>补助资金</td><td><input id="dlg_editStat_stat_assi_money"></td>
  			</tr>
  			<tr>
  				<td>到位资金</td><td><input id="dlg_editStat_stat_real_money"></td>
  			</tr>
  			<tr>
  				<td>受益户数</td><td><input id="dlg_editStat_stat_amount"></td>
  			</tr>
  		</table>
  	</div>
<!--   编辑效益统计数据的按钮 -->
	<div id="dlg_editStat_buttons">
	  	<a href="javascript:void(0);" id="editStat_ok" href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-ok'" onclick="editOK()">确定</a>
	  	<a href="javascript:void(0);" class="easyui-linkbutton" data-options="iconCls:'icon-cancel'" onclick="javascript:$('#dlg_editStat').dialog('close');">取消</a>
  	</div>

</body>
</html>