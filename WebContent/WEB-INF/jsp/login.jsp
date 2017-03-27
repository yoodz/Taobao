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
<script data-main="<%=basePath %>source/js/main/login.js" src="<%=basePath %>source/js/lib/require.js"></script>
<link href="<%=basePath %>source/style/login.css" rel="stylesheet" type="text/css" />
  <body>
    <div class="wrap" ng-controller="loginController as ctrl">
      <div class="main-top">
        <div class="logo-style">
          <span class="logo-word-style">淘宝信息采集</span>
        </div>
        <div class="login-window">
          <form name="messageForm">
            <div class="input-div">
              <div class="user-style">
                <input class="input-style" name="username" ng-model="ctrl.userName" type="text" placeholder="请输入用户名" ng-minlength="4" ng-maxlength="20" required />
                <p class="error" ng-if="messageForm.username.$error.required && messageForm.username.$touched">username is not empty</p>
                <p class="error" ng-if="(messageForm.username.$error.minlength || messageForm.username.$error.maxlength) && messageForm.username.$touched">username is require in 4~20</p>
              </div>
              <div class="user-style">
                <input class="input-style" name="password" ng-model="ctrl.password" type="password" placeholder="请输入密码" ng-minlength="4" ng-maxlength="20" required />
                <p class="error" ng-if="messageForm.password.$error.required && messageForm.password.$touched">password is not empty</p>
                <p class="error" ng-if="(messageForm.password.$error.minlength || messageForm.password.$error.maxlength) && messageForm.password.$touched">password is require in 4~20</p>
              </div>
            </div>
            <div class="button-div">
              <div class="reset-button" value="取消">取消</div>
              <button class="basic-button login-button" ng-click="ctrl.validation()" value="登陆">登陆</button>
            </div>
          </form>
        </div>
      </div>
    </div>
  </body>
</html>