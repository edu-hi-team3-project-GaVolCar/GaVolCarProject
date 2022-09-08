<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>예약하기</title>
<link rel="stylesheet" href="//code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//code.jquery.com/ui/1.10.2/jquery-ui.js"></script>


<link rel="stylesheet" href="/resources/css/timepicker.css" />
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
<script src="/resources/js/timepicker.js"></script>

<!-- 팝업창 -->
<script type="text/javascript">
$(function(){
  $('#Btn').click(function(event) {
 	 oPopupOpen();
  });  
});

function oPopupOpen() {
	var url = "/rez/car_search";
	var winWidth = 1000;
	var winHeight = 500;
	var popupOption = "width=" + winWidth + ", height=" + winHeight;
	window.open(url,"",popupOption);
}


function setOrdNumber(cno, cimg, ctype, cvolume, cprice){
	document.getElementById("car_no").value = cno;
    document.getElementById("car_img").value = cimg;
    document.getElementById("car_type").value = ctype;
	document.getElementById("car_volume").value = cvolume;
	document.getElementById("car_price").value = cprice;
}
</script>

<!-- 달력 스크립트 -->
<script>
	$(function(){
		$('#datepicker').datepicker();
	})
</script>
<script>
$(document).ready(function () {
    $.datepicker.regional['ko'] = {
        closeText: '닫기',
        prevText: '이전달',
        nextText: '다음달',
        currentText: '오늘',
        monthNames: ['1월(JAN)','2월(FEB)','3월(MAR)','4월(APR)','5월(MAY)','6월(JUN)',
        '7월(JUL)','8월(AUG)','9월(SEP)','10월(OCT)','11월(NOV)','12월(DEC)'],
        monthNamesShort: ['1월','2월','3월','4월','5월','6월',
        '7월','8월','9월','10월','11월','12월'],
        dayNames: ['일','월','화','수','목','금','토'],
        dayNamesShort: ['일','월','화','수','목','금','토'],
        dayNamesMin: ['일','월','화','수','목','금','토'],
        weekHeader: 'Wk',
        dateFormat: 'yy-mm-dd',
        firstDay: 0,
        isRTL: false,
        showMonthAfterYear: true,
        yearSuffix: '',
        showOn: 'both', //button:버튼을 표시하고,버튼을 눌러야만 달력 표시
        buttonText: "달력",
        changeMonth: true,
        changeYear: true,
        showButtonPanel: true,
        yearRange: 'c-99:c+99',

    };
    $.datepicker.setDefaults($.datepicker.regional['ko']);

    $('#sdate').datepicker();
    $('#sdate').datepicker("option", "maxDate", $("#edate").val());
    $('#sdate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#edate").datepicker( "option", "minDate", selectedDate );
    });

    $('#edate').datepicker();
    $('#edate').datepicker("option", "minDate", $("#sdate").val());
    $('#edate').datepicker("option", "onClose", function ( selectedDate ) {
        $("#sdate").datepicker( "option", "maxDate", selectedDate );
    });
});    
    <!-- 예약기간 계산 스크립트 -->
    function call()
    {
    	var sdd = document.getElementById("sdate").value;
    	var edd = document.getElementById("edate").value;
    	var ar1 = sdd.split('-');
    	var ar2 = edd.split('-');
    	var da1 = new Date(ar1[0], ar1[1], ar1[2]);
    	var da2 = new Date(ar2[0], ar2[1], ar2[2]);
    	var dif = da2 - da1;
    	var cDay = 24 * 60 * 60 * 1000;// 시 * 분 * 초 * 밀리세컨
 	
    	if(sdd && edd){
    	document.getElementById('days').value = parseInt(dif/cDay)
 		}
    }
</script>

        
</head>
<body>
<table>
	<form action="rents_check" method="post">
		<tr>
			<td><h3>회원정보</h3></td>
			<td></td>
		</tr>
				<!-- 이름 나이 전화번호 이메일 받아오기 -->
		<tr>
			<td>이름</td>
			<td id="name">${uid.user_name }</td>
		</tr>
				
		<tr>
			<td>나이</td>
			<td id="age">${uid.user_age }</td>
		</tr>
				
		<tr>
			<td>전화번호</td>
			<td id="phone_number">${uid.user_phone_number }</td>
		</tr>
				
		<tr>
			<td>이메일</td>
			<td id="email">${uid.user_email }</td>
		</tr>
			<!-- 예약 종료일은 예약 시작일을 앞설 수 없다 -->
		<tr>
			<td>예약 시작일 
			<input type="text" name="sdate" id="sdate" onchange="call()" size="10" maxlength="10" value="" class="datepicker" ></td>
		</tr>
			
		<tr>
			<td>예약 종료일
			<input type="text" name="edate" id="edate" onchange="call()" size="10" maxlength="10" value="" class="datepicker"></td>
		</tr>
		
		<tr>
        	<td><button type="button" class="btn btn-default btn-sm" id="Btn">차량조회</button></td>
        </tr>
        
        
		<tr><td><h3>차량 정보</h3></td>
		<td></td>
		</tr>		
			<!-- 팝업창에서 전달받는 내용 -->
			
		<tr>
        	<td style="text-align: left;">차량 사진</td>	</br>
        	<td><input type="text" name="cimg" id="car_img" title="차량 사진" 
				value="${sform.cimg}" valid='{"required":"true"}' readonly></td>
		</tr>
		
		<tr>
    		<td style="text-align: left;">차량 번호</td></br>
        	<td><input type="text" name="cno" id="car_no" title="차량 번호" class="only_number" 
        			value="${sform.cno}" valid='{"required":"true"}' readonly> </td>
        </tr>
		
		<tr>
			<td style="text-align: left;">차종</td>
        	<td><input type="text" name="ctype" id="car_type" title="차종" 
				value="${sform.ctype}" valid='{"required":"true"}' readonly> </td>
		</tr>
		
		<tr>
			<td style="text-align: left;">탑승가능인원</td>
        	<td><input type="text" name="cvolume" id="car_volume" title="탑승가능인원" class="only_number" 
        		value="${sform.cvolume}" valid='{"required":"true"}' readonly></td>
        </tr>
		
		<tr>
        	<td style="text-align: left;">시간당 요금</td></br>
        	<td><input type="text" name="cprice" id="car_price" title="시간당 요금" class="only_number" 
        		value="${sform.cprice}" valid='{"required":"true"}' readonly></td>
        </tr>
		
		<!-- 이게 맞는가 모르겠다 -->
		<tr>
        	<td style="text-align: left;">예약기간</td></br>
        	<td><input type="text" name="fprice" id="days" title="예약기간">일</td>
        </tr>
		
			
			
		<tr><td><h3>추가옵션</h3></td>
			<td></td>
		</tr>
		
		<tr>
			<td><p>하이패스 유무</p> </td>
			<td></td>
		</tr>
		
		<tr>
			<td><input type="radio" id="hipass_check" name="hipass_check" value="0" checked="checked">미선택</td>
			<td><input type="radio" id="hipass_check" name="hipass_check" value="1">선택</td>
		</tr>
		<tr>
			<td><p>카시트 유무</p></td>
			<td></td>
		</tr>
		
		<tr>
				<td><input type="radio" id="cseat_check" name="cseat_check" value="0" checked="checked">미선택</td>
				<td><input type="radio" id="cseat_check" name="cseat_check" value="1">선택</td>
		 </tr>
		 
		 
		 <!-- 결제하기 페이지로 넘어가게 해주세요 -->
		 <tr><td><input type="submit" value="예약하기"></a></td><td>
		 </tr>

		 </form>
</table>	
        
		
		
		
</body>
</html>