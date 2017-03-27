<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
    + request.getServerName() + ":" + request.getServerPort() + path + "/";
%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<script data-main="<%=basePath %>source/js/main/student.js" src="<%=basePath %>source/js/lib/require.js"></script>
<link href="<%=basePath %>source/style/student.css" rel="stylesheet" type="text/css" />
<body ng-controller="studentController as ctrl">
    
    <div class="wrap">
        <div>
            <div class="login-window">this is the student page</div>
              <div class="steps-box">
                <button class="button-style" id="step2" ui-sref="step2" >step2</button>
                <button class="button-style" id="step3" ui-sref="step3" >step3</button>
              </div>
        </div>

    </div>
    <ui-view/>
</body>
</html>