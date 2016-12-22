<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!doctype html>
<html lang="en">
 <head>
  <meta charset="UTF-8">
  <meta name="Generator" content="EditPlus®">
  <meta name="Author" content="">
  <meta name="Keywords" content="">
  <meta name="Description" content="">
<title>填写项目进度表</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	getProjectName();
	 
});
//通过申报者地区id+已审批状态来查询项目名称
function getProjectName(){
	
	$.post("declare/getProjectName.do",function(data){
		var value="";
		$(data).each(function(i,v){
			value+="<option value="+v.pro_id+">"+v.pro_name+"</option>"
		});
		$("#pn").append(value);
		$(data).each(function(i,v){//根据项目名来初始化年份，其他配套资金，农牧民折资
			if($("#pn").val()==v.pro_id){
				$("#pro_year").val(v.pro_year);
				$("#pro_other_money").val(v.pro_other_money);
				$("#pro_self_money").val(v.pro_self_money);
				return;
			}
		});
		
	},"json");
}
//当项目名改变，根据它的id来更新年份，其他配套资金，农牧民折资
function selectProjectName(){
	var pro_id=$("#pn").find("option:selected").val();//项目id
	$.post("declare/getDeclare/"+pro_id+".do",function(data){
		$("#pro_year").val(data.pro_year);
		$("#pro_other_money").val(data.pro_other_money);
		$("#pro_self_money").val(data.pro_self_money);
	},"json");
}
//添加项目进度表
function addProgress(){
	
	var pro_id=$("#pn").find("option:selected").val();//项目id
	var progress_place_status=$('input:radio[name="progress_place_status"]:checked').val();
	var progress_ok=$('input:radio[name="progress_ok"]:checked').val();
	var progress_assi_money=$("#progress_assi_money").val();
	var progress_bf_money=$("#progress_bf_money").val();
	var progress_finish=$("#progress_finish").val();
	var progress_remark=$("#progress_remark").val();
	var progress_department=$("#progress_department").val();
	var progress_res=$("#progress_res").val();
	var progress_informant=$("#progress_informant").val();
	var progress_bz=progress_bf_money/progress_assi_money;
	//进行数据校验
	if(progress_assi_money==""||progress_assi_money.match(/[^\d]/)||progress_assi_money.length>11){
		$.messager.alert("提示","申请补助金必须必填项且小于11位的数字");
		return;
	}else if(progress_bf_money==""||progress_bf_money.match(/[^\d]/)||progress_bf_money.length>11){
		$.messager.alert("提示","拨付报账资金必须必且是小于11位的数字");
		return;
	}else if(progress_remark==""){
		$.messager.alert("提示","备注为必填项!");
		return;
	}else if(progress_department==""){
		$.messager.alert("提示","填报单位为必填项!");
		return;
	}else if(progress_res==""){
		$.messager.alert("提示","负责人为必填项!");
		return;
	}else if(progress_informant==""){
		$.messager.alert("提示","填报人为必填项!");
		return;
	}
	
	$.post("pratice/addTxjd.do",{"pro_id":pro_id,"progress_place_status":progress_place_status,"progress_ok":progress_ok,"progress_assi_money":progress_assi_money,"progress_bf_money":progress_bf_money,"progress_bz":progress_bz,"progress_finish":progress_finish,"progress_remark":progress_remark,"progress_department":progress_department,"progress_res":progress_res,"progress_informant":progress_informant},function(data){
		if(data==1){
			$.messager.alert("提示","提交成功!");
		}else{
			$.messager.alert("提示","提交失败!");
		}
	},"text");
}
</script>
		<div class="easyui-panel" title="填写项目进度表" >
  		<table id="dd_cdgl" width="100%" height="500px" border="1" style="border:1px solid #fff;"
                           cellpadding="0" cellspacing="0" >
    	<tr>
    		<td align="center">项目名称:</td><td><select id="pn" onChange="selectProjectName();" ></select></td>
    	</tr>
        <tr>   
            <td  align="center">年份:</td><td><input id="pro_year"  class="easyui-validatebox"  type="text" readonly="readonly"></td>  
        </tr> 
         <tr>   
            <td align="center">是否到位:</td><td><input type="radio" name="progress_place_status" checked="checked" value="0">否&nbsp;&nbsp;<input type="radio" name="progress_place_status" value="1">是</td>  
        </tr>  
        <tr>   
            <td align="center">是否启动:</td><td><input type="radio" name="progress_ok" checked="checked" value="0">否&nbsp;&nbsp;<input type="radio" name="progress_ok" value="1">是</td>  
        </tr>  
        <tr>   
            <td align="center">补助资金:</td><td><input class="easyui-validatebox" data-options="required:true" type="text" id="progress_assi_money"></td>  
        </tr>   
         <tr>   
            <td align="center">拨付报账资金:</td><td><input class="easyui-validatebox" data-options="required:true" type="text" id="progress_bf_money"></td>  
        </tr> 
        <tr>   
            <td align="center">项目完成进度:</td><td><input type="text" class="easyui-validatebox" data-options="required:true" id="progress_finish"></td>  
        </tr>
        <tr>   
            <td align="center">其他配套资金:</td><td><input type="text" class="easyui-validatebox"  readonly="readonly" id="pro_other_money"></td>  
        </tr>  
        <tr>   
            <td align="center">农牧民折资:</td><td><input type="text" class="easyui-validatebox"  readonly="readonly" id="pro_self_money"></td>  
        </tr>  
        <tr>   
            <td align="center">备注:</td><td><textarea id="progress_remark" style="height:60px;"></textarea></td>  
        </tr>  
        <tr>   
            <td align="center">填报单位:</td><td><input type="text" class="easyui-validatebox" data-options="required:true" id="progress_department"></td>  
        </tr> 
        <tr>   
            <td align="center">负责人:</td><td><input type="text" class="easyui-validatebox" data-options="required:true" id="progress_res"></td>  
        </tr>   
        <tr>   
            <td align="center">填报人:</td><td><input type="text" class="easyui-validatebox" data-options="required:true" id="progress_informant"></td>  
        </tr>  
         <tr>   
            <td></td><td ><input type="submit" onclick="addProgress();"  style="cursor:pointer">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/P2P2/index.jsp" ><input type="button" value="返回" style="cursor:pointer"></a></td>  
        </tr>  
  		</table>
		</div>
</body>
</html>