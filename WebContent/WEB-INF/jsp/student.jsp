<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Insert title here</title>
</head>
<script data-main="<%=basePath %>source/js/main/student.js" src="<%=basePath %>source/js/lib/require.js"></script>
<link href="<%=basePath %>source/style/student.css" rel="stylesheet" type="text/css" />
  <body ng-controller="studentController as ctrl">
    <div class="login-window">淘宝信息采集</div>
    <div class="wrap">
      <div class="left">
        <div class="second-title">基础参数查询</div>
        <div class="basic-div">
          <span>收入比率：</span>
          <input class="basic-input" type="text" / > ~
          <input class="basic-input" type="text" / >
        </div>
        <div class="basic-div">
          <span>价格区间：</span>
          <input class="basic-input" type="text" / > ~
          <input class="basic-input" type="text" / >
        </div>
        <div class="basic-div">月销量在 <input class="basic-input" type="text" />笔以上</div>
        <div class="basic-div">每页采集数量： <input class="basic-input" type="text" /></div>
      </div>
      <div class="right">
        <div class="table-title">
          <span class="every-tab">宝贝Id</span>
          <span class="every-tab">宝贝标题</span>
          <span class="every-tab">买家店铺名称</span>
          <span class="every-tab">宝贝原价</span>
          <span class="every-tab">宝贝现价</span>
          <span class="every-tab">通用佣金</span>
          <span class="every-tab">高佣金</span>
        </div>
      </div>
    </div>






          <!--<div class="steps-box">  这里是angular 的路由，暂时不使用
              <button class="button-style" id="step2" ui-sref="step2" >step2</button>
              <button class="button-style" id="step3" ui-sref="step3" >step3</button>
          </div>
      </div>


    <ui-view/>-->
  </body>
</html>