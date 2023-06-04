<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/design.css">
<head>
    <title>TOP画面</title>
</head>
<body>
${currentUser.name}さんこんにちは。
<br>
<a href="/mutter/insert" class="btn mutter">つぶやく</a>
<a href="/user/logout">ログアウト</a>
<br>

<c:forEach items = "${mutters}" var = "mutter">
    <div class="mutterArea">
        <div class="mutteredBy">
            ${currentUser.name}<br>
        </div>
        <div class="mutterText">
            ${mutter.text}<br>
        </div>
        
    </div>
</c:forEach>
</body>
</html>