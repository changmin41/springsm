<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    .chart-container {
        display: flex;
        flex-wrap: wrap; /* 두 행으로 나눠지도록 설정 */
        justify-content: space-between; /* 간격 조정 */
    }

    .chart-box {
        width: 49%; /* 각 차트가 열의 절반을 차지 */
        height: 500px;
        border: 2px solid red;
        margin-bottom: 10px; /* 차트 간 간격 조정 */
    }
</style>

<div class="col-sm-10">
    <h2>차트 페이지</h2>
    <div class="chart-container">
        <div class="chart-box">
            <div id="container1"></div>
        </div>
        <div class="chart-box">
            <div id="container2"></div>
        </div>
        <div class="chart-box">
            <div id="container3"></div>
        </div>
        <div class="chart-box">
            <div id="container4"></div>
        </div>
    </div>
</div>
