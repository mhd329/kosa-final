<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>회원 정보 수정</title>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <link rel="stylesheet" href="/myPage/css/modify.css">
    <script src="/myPage/js/modify.js"></script>
</head>
<body>
<h1>회원 정보 수정</h1>
<div class="menu">
    <div class="active"><a href="/myPage/userModify">정보수정</a></div>
    <div> <a href="/myPage/userRental">이용내역</a></div>
    <div> <a href="/myPage/userFaultReport">신고내역</a></div>
</div>
<table>
    <tr>
        <th>아이디</th>
        <td><input type="text" id="userName" readonly /></td>
    </tr>
    <tr>
        <th>이름</th>
        <td><input type="text" id="customerName" readonly /></td>
    </tr>
    <tr>
        <th>비밀번호</th>
        <td><input type="password" id="userPassword" readonly /></td>
    </tr>
    <tr>
        <th>휴대폰번호</th>
        <td><input type="text" id="customerPhone" /></td>
    </tr>
    <tr>
        <th>생년월일</th>
        <td><input type="text" id="birthday" /></td>
    </tr>
    <tr>
        <th>이메일</th>
        <td><input type="email" id="email" /></td>
    </tr>
</table>

<div class="button-container">
    <button id="saveButton">수정</button>
    <button id="deleteButton">회원탈퇴</button>
</div>
</body>
</html>