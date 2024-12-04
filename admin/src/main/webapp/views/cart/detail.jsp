<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<script>
    let cart_detail = {
        init:function(){
            $('#cart_update_form > #btn_delete').click(()=>{

                let c = confirm('삭제하시겠습니까?');
                if(c == true){
                    let cartUserId = $('#cartUserId').val();
                    let cartItemId = $('#cartItemId').val();
                    location.href='<c:url value="/cart/delete"/>'+'?cartUserId='+cartUserId+'&cartItemId='+cartItemId;
                }
            });
            $('#cart_update_form > #btn_update').click(()=>{

                let c = confirm('수정하시겠습니까?');
                if(c == true){
                    this.send();
                }
            });
        },
        send:function(){
            $('#cart_update_form').attr({
                'method':'post',
                'enctype':'multipart/form-data',
                'action':'<c:url value="/cart/update"/>' // 수정 경로 변경
            });
            $('#cart_update_form').submit();
        }
    };
    $(function(){
        cart_detail.init();
    });
</script>

<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">장바구니 상품 상세 정보</h1>

    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">장바구니 상품 수정/삭제</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <form id="cart_update_form">
                    <div class="form-group">
                        <label for="cartUserId">사용자 ID:</label>
                        <input type="text" readonly="readonly" value="${cart.cartUserId}" class="form-control" id="cartUserId" name="cartUserId">
                    </div>
                    <div class="form-group">
                        <label for="cartItemId">상품 ID:</label>
                        <input type="text" readonly="readonly" value="${cart.cartItemId}" class="form-control" id="cartItemId" name="cartItemId">
                    </div>
                    <div class="form-group">
                        <label for="itemName">상품명:</label>
                        <input type="text" value="${cart.itemName}" class="form-control" id="itemName" name="itemName" readonly>
                    </div>
                    <div class="form-group">
                        <label for="itemPrice">상품 가격:</label>
                        <input type="number" value="${cart.itemPrice}" class="form-control" id="itemPrice" name="itemPrice" readonly>
                    </div>
                    <div class="form-group">
                        <label for="cartCount">수량:</label>
                        <input type="number" value="${cart.cartCount}" class="form-control" id="cartCount" name="cartCount">
                    </div>
                    <div class="form-group">
                        <h6>장바구니 등록일:</h6>
                        <fmt:formatDate pattern="yyyy년 MM월 dd일 HH:mm" value="${cart.cartRegDate}" />
                    </div>
                    <div class="form-group">
                        <img src="<c:url value='/imgs'/>/${cart.imgName}" alt="상품 이미지">
                        <input type="hidden" name="imgName" value="${cart.imgName}">
                    </div>
                    <div class="form-group">
                        <label for="newimage">새 이미지 업로드:</label>
                        <input type="file" class="form-control" id="newimage" name="image">
                    </div>
                    <button id="btn_update" type="button" class="btn btn-primary">수정</button>
                    <button id="btn_delete" type="button" class="btn btn-danger">삭제</button>
                </form>
            </div>
        </div>
    </div>

</div>
