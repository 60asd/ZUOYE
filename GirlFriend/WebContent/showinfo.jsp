<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="nvyoubao.GirlFriend" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>接受审判吧少年！</title>
</head>
<body>
<%
	GirlFriend gf = (GirlFriend)session.getAttribute("myGirlFriend");//从session中获得
	String phone = request.getParameter("phone");//从刚刚的页面中得到选项内容
	
	int shenqi = gf.getShenqi();//获得女友现在的生气值
	int ai = gf.getAi();//获得女友现在的爱值
	
	if(phone.equals("0")){
		shenqi = shenqi+10;
	}else if(phone.equals("1")){
		shenqi = shenqi+30;
	}else if(phone.equals("2")){
		ai = ai+20;
	}else{
		ai = ai+10;
		shenqi=shenqi +10;
	}
	
	gf.setShenqi(shenqi);
	gf.setAi(ai);
	
	if(gf.getShenqi()>20){
		out.print("<h1>恭喜你，你已经狗带了</h1>");
	}else{
		out.print("<h1>少年你要小心，女友的怒气值已到达"+gf.getShenqi()+"</h1>");
	}
	if(gf.getAi()>30){
		out.print("<h1>哎呦不错哦</h1>");
		out.print("<p><a href='status.jsp'>继续测试！</a></p>");
	}
	if(gf.getAi()>100){
		out.print("<h1>恭喜你，可以进入殿堂</h1>");
	}
%>
</body>

</html>