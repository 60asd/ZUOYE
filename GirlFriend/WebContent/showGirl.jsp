<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>女友处理界面</title>
<!-- 初始化你的女友 -->
<jsp:useBean id="myGirlFriend" class="nvyoubao.GirlFriend" scope="session"/>

<!-- 填入信息 -->
<jsp:setProperty property="*" name="myGirlFriend"/>
</head>
<body>
<p>女朋友的颜值:<jsp:getProperty property="yanzhi" name="myGirlFriend"/>分</p>
<p>女朋友的体重:<jsp:getProperty property="tizhong" name="myGirlFriend"/>kg</p>
<p>女朋友的身高:<jsp:getProperty property="shengao" name="myGirlFriend"/>cm</p>
<p>女朋友的怒值:<jsp:getProperty property="shenqi" name="myGirlFriend"/></p>
<p>女朋友的爱值:<jsp:getProperty property="ai" name="myGirlFriend"/></p>

<p><a href="status.jsp">前方高能！！开始测试！！！</a></p>
</body>
</html>