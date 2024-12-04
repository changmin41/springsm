
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="col-sm-10">
    <h2>car Get Page</h2>

    <!-- 검색어 입력 폼, name 속성에 carName 추가 -->
    <form class="search-box" action="<c:url value='/car/search' />" method="get">
        <input class="search-txt" type="text" name="carName" placeholder="차량 이름을 입력해주세요">
        <button type="submit">
            <i class="fa-solid fa-magnifying-glass"></i>
        </button>
    </form>


    <!-- 차량 목록을 출력하는 테이블 -->
    <table class="table">
        <thead class="thead-dark">
        <tr>
            <th>car_id</th>
            <th>car_name</th>
            <th>car_model</th>
            <th>car_price</th>
            <th>reg_date</th>
        </tr>
        </thead>
        <tbody>
        <!-- JSP의 JSTL 태그로 반복문을 통해 차량 목록을 출력 -->
        <c:forEach var="c" items="${cars}">
            <tr>
                <td><a href="/car/detail?car_id=${c.carId}">${c.carId}</a></td>
                <td>${c.carName}</td>
                <td>${c.carModel}</td>
                <td>${c.carPrice}원</td>
                <td>${c.regDate}</td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</div>
