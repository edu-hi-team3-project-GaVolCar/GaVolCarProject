<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- C태그 쓰기 위해 넣은 taglib므로 반드시 확인 --> 
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
  
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


 <meta http-equiv="X-UA-Compatible" content="IE=edge">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">

 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>



<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript">
	
function list(result) {
    var htmls="";
    
    $("#list-table").html("");
    
    $("<tr>" , {
       html : "<td>" + "지역별 명소들" + "</td>"
    }).appendTo("#list-table") // 이것을 테이블에 붙임
    
    	
    if(result.length < 1){
       htmls.push("등록된 장소가 없습니다.");
    }else{         
       
       $(result).each(function() {
          htmls += '<tr>';
          
          htmls += '<td>' + '<a href="/areacontent_view_user?area_name=' + this.area_name + '"><div class="row" style="margin:  0 ;"><img src="'+this.area_img+'" width="250sem" height="200em">' + this.area_name + "  " + this.area_loc + '</a></div></td>'
        
          htmls += '</tr>';   
          
       });
       
  
    }
    
    $("#list-table").append(htmls);      
    
}
 



$(document).ready(function() {
	$.ajax({
		type:"GET",
		url:"/areas/areaList",
		success:function(result){
			console.log(result);
			
			list(result);
		}
		
		
		
	});
	
	
});	


</script>

<style type="text/css">
		#headerpotal{
			text-align: center;
			font-size: 1.5em;
			line-height: 4em;
			
		}
		#headlogin{
			text-align: center;
			line-height: 4em;
			
		}
		#upperbar{
			text-align: center;
		}
		#footbar{
			text-align: center;
		}
		#foottxt{
			color: gray;
			line-height: 2em;
			font-size: 1em;
		}
		#eventtable{
			
			border: 2px solid black;
			text-align: center;
			margin: auto;
		}
		#tablebase{
			margin: auto;
			line-height: 500em;
		}
		#list-table{
			font-size: 4em;
			margin: 0 auto;
			text-align: center;
			text-decoration: none;
			border: 1px solid black;
		}
		
	</style>




</head>
<body>
<div class="container col-12" id="headbar" style="background: gray;">
		<div class="row">
			<div class="col-3"><a id="headlogo" href="/main"><img src="../투명로고.png" height="100em"></a></div>
			
				<table  class="col-4" id="headerpotal">
					<tr>
						<td class="col-3"><a href="#"><img src="../마이페이지.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../예약.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../고객지원.png" width="100em"></a></td>
						<td class="col-3"><a href="#"><img src="../후기.png" width="100em"></a></td>
					</tr>
				</table>
			
			<div class="col-2">
				
			</div>
			<div id="headlogin" class="col-2">
				<a href="#"><img src="../로그인.png" width="100em"></a>
				<a href="#"><img src="../회원가입.png" width="100em"></a>
			</div>
		</div>
	</div>

<h1>일단 리스트</h1>
	<table id="list-table" width="900em" border= "1px solid black">
		
	</table>
	
	<footer id="footbar" style="background-color: black;">
		
		<div class="container col-11">
			<div class="row">
				<div class="col-3"><img src="../회색로고.png" height="100em" width="100em"></div>
				<div id="foottxt" class="col-9">
					<div>프로젝트 가볼카 | 대표이사: 정다은 | 제주도 가볼길 001호</div>
					<div>사업자등록번호 : 010-11-11122 | 통신판매신고번호: 제2022-제주서귀포-0001호 | TEL: 1111-1111 | Fax:000-000-0000 | Project@Gavolcar.co.kr</div>
					<div>COPYRIGHT©GAVOLCAR.ALL.RIGHTS.RESERVED</div>
					
				</div>
			</div>
		</div>

	</footer>
</body>
</html>