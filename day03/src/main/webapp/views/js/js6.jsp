<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>

$(document).ready(function () {
    js6.init()
});

</script>

<div class="col-md-6">
    <div class="row justify-content-center">
        <div class="col-md-10">
            <h2 class="text-center mb-4">회원가입</h2>
            <form id="register_form" class="border p-4 shadow-sm rounded bg-light">
                <div class="form-group mb-3">
                    <label for="id" class="form-label">아이디</label>
                    <input type="text" class="form-control" id="id" placeholder="ID 입력" name="id" >
                </div>

                <div class="form-group mb-3">
                    <label for="pwd" class="form-label">비밀번호</label>
                    <input type="password" class="form-control" id="pwd" placeholder="비밀번호 입력" name="pwd" >
                </div>

                <div class="form-group mb-3">
                    <label for="email" class="form-label">이메일</label>
                    <input type="email" class="form-control" id="email" placeholder="이메일 입력" name="email" >
                </div>

                <div class="form-group mb-3">
                    <label for="re_name" class="form-label">이름</label>
                    <input type="text" class="form-control" id="re_name" placeholder="이름 입력" name="re_name" >
                </div>

                <div class="form-group mb-4">
                    <label class="form-label d-block">성별</label>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="customRadio1" name="customRadio" value="male">
                        <label class="form-check-label" for="customRadio1">남자</label>
                    </div>
                    <div class="form-check form-check-inline">
                        <input class="form-check-input" type="radio" id="customRadio2" name="customRadio" value="female">
                        <label class="form-check-label" for="customRadio2">여자</label>
                    </div>
                </div>

                <button type="button" class="btn btn-primary w-100">가입하기</button>
            </form>
        </div>
    </div>
</div>
