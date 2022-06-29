<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩 -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<!-- jquery -->
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<meta charset="UTF-8">
<title>메인페이지</title>
</head>
<body>
<h1>메인</h1>
세션아이디 : <%=session.getId() %><br>
계정아이디 : <%=session.getAttribute("ID") %><br>
세션 유지시간 : <%=session.getMaxInactiveInterval() %>초<br>
<script>
	max = <%=session.getMaxInactiveInterval() %>; // 총 세션 시간을 받아온다.
	function timer() {
		max = max - 1;
		if(max <0 ){
			clearInterval(tmp);
			alert("세션 종료");
			location.href="05LoginForm.jsp";
		}
		document.getElementById("timer").innerHTML = max;
	}
	tmp=setInterval(timer, 1000);
</script>
<style>
#maincontents {
	display:flex;
	justify-content:space-around;
}
#maincontents img {
	width:95%; height:120px;
	margin:5px;
}
</style>
<p id="timer"></p>
<a href="05ShowCartList.jsp">장바구니로 이동</a>
<a href="05Logout.jsp">로그아웃</a>
<div id="wrapper">
	<div id="maincontents" class="container-md">
		<!-- 카드1 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="키보드">
				<input type="hidden" name="cat" value="데스트탑사치품">
				<input type="hidden" name="price" value="150000">
			  <img src="data:image/jpeg;base64,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" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">키보드</h5>
			    <input type="submit" class="btn btn-primary w-100" value="상세정보">
			    <button onclick="addtoCart(0)" class="btn btn-primary w-100 mt-2">카트</button>
			  </div>
			</form>
		</div>
		
		<!-- 카드2 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="마우스">
				<input type="hidden" name="cat" value="데스크탑필요">
				<input type="hidden" name="price" value="120000">
			  <img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIqBUvdVkOaK-crfqztrOBrW7etB2HWW63iT8V4zc3FeiJ6gjDpKCsccxlAXdH_jYN5mo&usqp=CAU" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">마우스</h5>
			    <input type="submit" class="btn btn-primary w-100" value="상세정보">
			    <button onclick="addtoCart(1)" class="btn btn-primary w-100 mt-2">카트</button>
			  </div>
		  </form>
		</div>
		
		<!-- 카드3 -->
		<div class="card" style="width: 18rem;">
			<form>
				<input type="hidden" name="prodname" value="모니터">
				<input type="hidden" name="cat" value="데스크탑필수2">
				<input type="hidden" name="price" value="500000">
			  <img src="https://i0.wp.com/hotthing.net/wp-content/uploads/2021/10/5eb07119-8894-4ed6-9746-b12a63ddedaa-e1635066623995.jpg?fit=1000%2C532&ssl=1" class="card-img-top" alt="...">
			  <div class="card-body">
			    <h5 class="card-title">모니터</h5>
			    <input type="submit" class="btn btn-primary w-100" value="상세정보">
			    <button onclick="addtoCart(2)" class="btn btn-primary w-100 mt-2">카트</button>
			  </div>
		  </form>
		</div>
	</div> <!-- maincontents끝 -->
</div> <!-- wrapper끝 -->

<script>
	function addtoCart(num)
	{
		form = document.forms[num];
		prodname = form[0].value;
		cat = form[1].value;
		price = form[2].value;
		isok = confirm("상품명 : " + prodname + "\n카테고리 : " + cat + "\n가격 : " + price);
		if(isok)
		//확인버튼을 눌렀을 때
		{
			form.action="05AddCart.jsp"
			form.submit();			
		}
	}
	
</script>
</body>
</html>
















