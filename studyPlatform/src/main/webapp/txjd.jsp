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
<title>填写项目进度表</title>
</head>
<body>
	<div class="easyui-layout" data-options="fit:true">
  	<div data-options="region:'center',fit:true,title:'填写进度表'">
  		<form id="ff" method="post" action="ssjd.jsp">
  		<table id="dd_cdgl" class="easyui-datagrid" data-options="fit:true,fitColumns:true">
  		<thead>   
        <tr>   
            <th data-options="field:'code',width:50"></th>   
            <th data-options="field:'name',width:100""></th>   
        </tr>   
    	</thead>   
        <tr>   
            <td style="text-align: right">项目名称：</td><td><select><option>乡镇卫生院</option></select></td>   
        </tr>   
        <tr>   
            <td style="text-align: center">年份</td><td><input type="text" value="2006"></td>  
        </tr> 
         <tr>   
            <td style="text-align: center">是否到位</td><td><input type="radio" name="s">否&nbsp;&nbsp;<input type="radio" name="s" >是</td>  
        </tr>  
        <tr>   
            <td style="text-align: center">是否启动</td><td><input type="radio" name="t">否&nbsp;&nbsp;<input type="radio" name="t">是</td>  
        </tr>  
        <tr>   
            <td style="text-align: center">补助资金</td><td><input type="text" value=""></td>  
        </tr>   
         <tr>   
            <td style="text-align: center">拨付报账资金</td><td><input type="text" value=""></td>  
        </tr> 
        <tr>   
            <td style="text-align: center">报账进度</td><td><input type="text" value=""></td>  
        </tr>  
        <tr>   
            <td style="text-align: center">项目完成进度</td><td><input type="text" value=""></td>  
        </tr>
        <tr>   
            <td style="text-align: center">其他配套资金</td><td><input type="text" value=""></td>  
        </tr>  
        <tr>   
            <td style="text-align: center">农牧民折资</td><td><input type="text" value=""></td>  
        </tr>  
        <tr>   
            <td style="text-align: center">备注</td><td><textarea ></textarea></td>  
        </tr>  
        <tr>   
            <td style="text-align: center">填报单位</td><td><input type="text" value=""></td>  
        </tr> 
        <tr>   
            <td style="text-align: center">负责人</td><td><input type="text" value=""></td>  
        </tr>   
        <tr>   
            <td style="text-align: center">填报人</td><td><input type="text" value=""></td>  
        </tr>  
         <tr>   
            <td></td><td style="text-align: right"><input type="submit" style="text-align:center;"><a href="ssjd.jsp"><input type="button" value="返回"></a></td>  
        </tr>  
  		</table>
  		</form> 
  	</div>
  </div>
</body>
</html>