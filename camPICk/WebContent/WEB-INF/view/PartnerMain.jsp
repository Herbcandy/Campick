<%@page import="java.util.ArrayList"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
	
	String num = (String)session.getAttribute("num");
	String account = (String)session.getAttribute("account");
	
	String loginId = (String)session.getAttribute("loginId");

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PartnerMain</title>
<style type="text/css">

@font-face 
{
     font-family: 'S-CoreDream-6Bold';
     src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_six@1.2/S-CoreDream-6Bold.woff') format('woff');
     font-weight: normal;
     font-style: normal;
}

.PartnerMain
{
	font-family: 'S-CoreDream-6Bold';
}

#logo:hover
{
	cursor: pointer;
}

.btn-warning:focus, .btn-warning.focus, .btn-warning:active, .btn-warning.active
{
	background-color: white;
    border-color: black;
} 

</style>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" type="text/css" href="<%=cp%>/css/PartnerMain.css">

<script type="text/javascript" src="js/bootstrap.min.js"></script>

<script type="text/javascript">

	$(function()
	{
		var num = "<%=num%>";
		
		if (num=="0")
		{
			$("#myBooking").attr("disabled", "disabled");
			$("#myCampground").attr("disabled", "disabled");
			$("#myQnA").attr("disabled", "disabled");
		}
		
		if ((${count} == 0)) 
		{
			$("#myBooking").attr("disabled", "disabled");
			$(".bookingBtn").css("color", "gray");
		}
		else // 등록된 캠핑장이 있을 경우에만 예약 관리로 연결
		{
			$("#myBooking").click(function()
			{            
				$(location).attr("href", "partnerbookingtemplate.wei");
			});
		}
	    
		
		$("#myCampground").click(function()
		{			
			$(location).attr("href", "mycampgroundtemplate.wei");
			
		});
		
		$("#myAccount").click(function()
		{
			$(location).attr("href", "partneraccounttemplate.wei");
		});
	});

</script>

</head>
<body>

<div class="PartnerMain">
	<div class="partnerItem">
		<jsp:include page="TopMenu.jsp"></jsp:include>
	</div>
	<div class="partnerItem" id="mainLogo">
		<img src="<%=cp%>/img/logo_title2.png" onclick="location.href='campick.wei'" id="logo">
	</div>
	<div class="partnerItem" style="height: 70vh;">
		<div class="partnerMainButton">
			<button type="button" id="myAccount" class="btn  btn-warning btn-lg">
				<img src="img/turtle.png" id="turtleImg" style="width: 150px; height: 150px;"><br><br>
				<span class="buttonName">계정관리</span>
			</button>
		</div>
		<div class="partnerMainButton">
			<button type="button" id="myBooking" class="btn  btn-warning btn-lg">
				<img src="img/turtle.png" id="turtleImg" style="width: 150px; height: 150px;"><br><br>
				<span class="buttonName bookingBtn">예약관리</span>
			</button>
		</div>
		<div class="partnerMainButton">
			<button type="button" id="myCampground" class="btn btn-warning btn-lg">
				<img src="img/turtle.png" id="turtleImg" style="width: 150px; height: 150px;"><br><br>
				<span class="buttonName">내 캠핑장 관리</span>
			</button>
		</div>
		<div class="partnerMainButton">
			<button type="button" id="myQnA" class="btn btn-warning btn-lg">
				<img src="img/turtle.png" id="turtleImg" style="width: 150px; height: 150px;"><br><br>
				<span class="buttonName">고객문의</span>
			</button>
		</div>
	</div>
</div>

<footer>
	 <c:import url="Footer.jsp"></c:import>
</footer>

</body>
</html>