<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<style>
    #dataTable img{
        width:100px !important;
    }
</style>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">장바구니 목록</h1>
    <p class="mb-4">여기서 사용자의 장바구니에 담긴 상품들을 확인할 수 있습니다.</p>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">장바구니 상품 목록</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>cart_user_id</th>
                        <th>cart_item_id</th>
                        <th>cart_count</th>
                        <th>cart_reg_date</th>
                        <th>item_name</th>
                        <th>item_price</th>
                        <th>img_name</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="cart" items="${cartlist}">
                        <tr>
                            <!-- 사용자 ID (DB 필드: cart_user_id) -->
                            <td>${cart.cartUserId}</td>
                            <!-- 상품 ID (DB 필드: cart_item_id) -->
                            <td>${cart.cartItemId}</td>
                            <!-- 장바구니에 담긴 수량 (DB 필드: cart_count) -->
                            <td>${cart.cartCount}</td>
                            <!-- 장바구니 등록일 (DB 필드: cart_reg_date) -->
                            <td> ${cart.cartRegDate}</td>
                            <!-- 상품명 (추가 데이터) -->
                            <td>${cart.itemName}</td>
                            <!-- 상품 가격 (추가 데이터) -->
                            <td>
                                <fmt:formatNumber type="number" pattern="###,###원" value="${cart.itemPrice}" />
                            </td>
                            <!-- 상품 이미지 (추가 데이터) -->
                            <td>
                                <img src="<c:url value='/imgs'/>/${cart.imgName}" alt="상품 이미지">
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
