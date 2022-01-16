<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PartnerBooking.jsp</title>
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js"></script>
<!-- <script src="https://unpkg.com/@popperjs/core@2/dist/umd/popper.js"></script>
<script src="https://unpkg.com/tippy.js@6"></script> -->
<script type="text/javascript" src="js/bootstrap.min.js"></script>

<link rel="stylesheet" type="text/css" href="css/bootstrap.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css">

<script type="text/javascript">
	
	$(function()
	{
		alert("${campgroundId}");
		
		var weekList = ['일','월','화','수','목','금','토'];
	    var calendarEl = document.getElementById('calendar');
	    var calendar = new FullCalendar.Calendar(calendarEl, {
	    	initialView: 'dayGridMonth'
			, headerToolbar: {
				left: 'prevYear,prev today next,nextYear'
				, center: 'title'
				/* , right: 'dayGridMonth,dayGridDay' */ 
				, right: 'dayGridMonth,listMonth'
			  }
			, titleFormat : function(date) { 
				return date.date.year + "년 " + (date.date.month +1) + "월"; 
	    	  }  
			, dayHeaderContent: function (date) {
		            return weekList[date.dow];
		            
			  }
	    	/* , eventLimit: true */

	    	, eventClick: function(info) {
				alert('Event: ' + info.event.title); // 상세 정보 띄우는...모달이나 뭐로 연결
			  }
			, events : [
				// ajax로 내용 가져오기
				{
					"title" : "All Day Event"
					, "start" : "2022-01-01"
				}
				,{
					"title" : "Long Event"
					, "start" : "2022-01-07"
					, "end" : "2022-01-10"
				}
				,{
					"title" : '고정값'
					, "start" : '2022-01-13'
					, "end" : '2022-01-15'
					, "groupId" : '해오름'
				}]

		});

		calendar.render();

	});
</script>
<style type="text/css">

a { color: black; }
.fc-day-sun a { color: red; } 
.fc-day-sat a { color: blue; }
.partnerBookingItem { padding: 50pt; width:800px;}
.partnerBookingContainer
{
	display: flex;
    flex-direction: column;
    align-items: center;
}

</style>

</head>
<body>
<div class="partnerBookingContainer">

	<div class="partnerBookingItem" style="height: 400px; background-color: gray;" > 차트 영역
	</div>
	
	<div class="partnerBookingItem" id='calendar'">
	</div>
	
	<div class="partnerBookingItem">
		<table class="table table-hover table-bordered">
			<tr>
				<th>객실 이름</th>
				<th>예약 현황</th>
			</tr>
			<tr>
				<td>용왕님방</td>
				<td>김예약 2명</td>
			</tr>
		</table>
	</div>
</div>

</body>
</html>