<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>상품 구매</title>

<script
	src="${ pageContext.request.contextPath }/resources/js/httpRequest.js"></script>

<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath }/resources/css/purchase_style.css">

<script>

	function btn_click(btn_name) {
		
		var click_name = btn_name;
		
		alert("결제 수단으로 \'" + click_name + "\'을(를) 선택하셨습니다.\n결제를 진행해주세요.");
		
	}
	
</script>

</head>
<body>
	<form>
		<h3>::: 결제창 :::</h3>

		<section id="main_frame">
			<div id="left">신용카드</div>

			<div id="middle">
				<ul>
					<li id="mark">KG 이니시스</li>
					<li id="info">안전하고 편리한 이니시스 결제입니다.</li>
				</ul>

				<br> <br> <br> <br>
				<hr>

				<ul>
					<li id="clause">이용약관</li>
					<li id="clause_agree"><input type="checkbox">&nbsp;전체
						동의</li>
				</ul>

				<br> <br>
				<hr>

				<ul>
					<li id="bottom_clause">전자금융거래 이용약관</li>
					<br>
					<li id="bottom_clause2">개인정보의 수집 및
						이용안내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox">&nbsp;동의
					</li>
					<li id="bottom_clause3">개인정보 제공 및
						위탁안내&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="checkbox">&nbsp;동의
					</li>
				</ul>

				<br> <br> <br> <br>
				<hr>

				<div>
					<div id="naverpay">
						<input id="naverpay_btn" type="button" value="네이버 페이"
							onclick="btn_click(naverpay_btn.value);">
					</div>

					<div id="hyundai">
						<input id="hyundai_btn" type="button" value="현대카드"
							onclick="btn_click(hyundai_btn.value);">
					</div>
					<div id="samsung">
						<input id="samsung_btn" type="button" value="삼성카드"
							onclick="btn_click(samsung_btn.value);">
					</div>

				</div>

				<div>
					<div id="kb">
						<input id="kb_btn" type="button" value="KB국민"
							onclick="btn_click(kb_btn.value);">
					</div>

					<div id="bc">
						<input id="bc_btn" type="button" value="비씨(페이북)"
							onclick="btn_click(bc_btn.value);">
					</div>

					<div id="shinhan">
						<input id="shinhan_btn" type="button" value="신한카드"
							onclick="btn_click(shinhan_btn.value);">
					</div>

					<div id="nh">
						<input id="nh_btn" type="button" value="NH농협"
							onclick="btn_click(nh_btn.value);">
					</div>

				</div>

				<div id="bottom_div">
					<div id="hana">
						<input id="hana_btn" type="button" value="하나카드"
							onclick="btn_click(hana_btn.value);">
					</div>

					<div id="lotte">
						<input id="lotte_btn" type="button" value="롯데카드"
							onclick="btn_click(lotte_btn.value);">
					</div>

					<div id="city">
						<input id="city_btn" type="button" value="씨티카드"
							onclick="btn_click(city_btn.value);">
					</div>

					<div id="hana2">
						<input id="hana2_btn" type="button" value="하나(외환)"
							onclick="btn_click(hana2_btn.value);">
					</div>

				</div>

			</div>

			<div id="right">
				<ul>
					<li id="right_top">KG 이니시스</li>
				</ul>

				<ul>
					<li id="right_mid">상품명</li>
					<li id="right_mid2">OOO</li>
				</ul>

				<ul>
					<li id="right_mid3">결제금액</li>
					<li id="right_mid4">000원</li>
				</ul>

				<input id="next" type="button" value="결&nbsp;&nbsp;&nbsp;&nbsp;제"
				       onclick="location.href='purchase_check.do'">

			</div>

		</section>
	</form>
</body>
</html>


















