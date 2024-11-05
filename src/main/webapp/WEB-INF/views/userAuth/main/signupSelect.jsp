<%-- Created by IntelliJ IDEA. --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="ko">
<head>
  <title>회원가입 방법 선택</title>
  <link href="${pageContext.request.contextPath}/css/signupSelect.css" rel="stylesheet">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
</head>
<body>
<!-- 상단 네비게이션 바 -->
<jsp:include page="../header/header.jsp" flush="true"/>
<!-- 회원가입 안내 카드 -->
<div class="container mt-5 d-flex justify-content-center">
  <div class="card text-center p-4" style="width: 600px;">
    <h3>회원가입</h3>
    <p class="info-text">딜랑이는 만 14세 이상(일반회원)만 회원가입이 가능합니다.<br>만 13세는 별도로 문의해 주시기 바랍니다.<br>위의 사항에 동의할 경우 아래 가입하기 버튼을 눌러 진행해 주세요.</p>
    <div class="d-flex justify-content-around">
      <a href="/signup/auth" class="btn btn-custom btn-general">만 14세 이상 회원가입하기</a>
      <a id="kakaoCert" class="btn btn-custom btn-kakao">
        <img class="icon" src="${pageContext.request.contextPath}/images/kakaoLogin.png" alt="카카오 아이콘">
      </a>
      <a id="naverCert" class="btn btn-custom btn-naver">
        <img class="icon" src="${pageContext.request.contextPath}/images/naverLogin.png" alt="네이버 아이콘">
      </a>
    </div>
  </div>
</div>
<!-- 하단 푸터 -->
<jsp:include page="../footer/footer.jsp" flush="true"/>
</body>
<script>
  const kakaoCert = document.querySelector("#kakaoCert");
  const naverCert = document.querySelector("#naverCert");
  kakaoCert.addEventListener("click", async () => {
    const response = await fetch("/api/oauth2/kakao");
    window.location.href = await response.text();
  });
  naverCert.addEventListener("click", async () => {
    const response = await fetch("/api/oauth2/naver");
    window.location.href = await response.text();
  });
</script>
</html>
