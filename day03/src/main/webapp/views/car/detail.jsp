<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    let detail = {
        init:function() {
            $('#update_btn').click(() => {
                this.check();
                location.href='<c:url value="/car/deleteimpl"/>'+'?car_id='+id;
            });
            $('#delete_btn').click(() => {
                let id = $('#car_id').val();
                let c = confirm("삭제하시겠습니까 ?");
                if(c == true){
                    location.href='<c:url value="/car/deleteimpl"/>'+'?car_id='+id;
                }
            });
        },
        check:function(){
            let id = $('#car_id').val();
            let name = $('#car_name').val();
            let model = $('#car_model').val();
            let price = $('#car_price').val();
            let date = $('#car_date').val();

            if(id == '' || id == null){
                alert('Id is Mandatory');
                $('#car_id').focus();
                return;
            }
            if(name == '' || name == null){
                alert('Name is Mandatory');
                $('#car_name').focus();
                return;
            }
            if(model == '' || model == null){
                alert('Model is Mandatory');
                $('#car_model').focus();
                return;
            }
            if(price == '' || price == null){
                alert('Price is Mandatory');
                $('#car_price').focus();
                return;
            }
            if(date == '' || date == null){
                alert('Date is Mandatory');
                $('#car_date').focus();
                return;
            }
            this.send();
        },
        send:function(){
            // method, action
            $('#register_form').attr('method','post');
            $('#register_form').attr('action','/car/updateimpl');
            $('#register_form').submit();
        }
    };

    $(function(){
        detail.init();
    });
</script>

<div class="col-sm-10">
    <h2>Car Detail Page</h2>
    <div class="row">
        <div class="col-sm-8">
            <form id="register_form">
                <div class="form-group">
                    <label for="car_id">Car ID:</label>
                    <input type="text" readonly value="${car.carId}" class="form-control" placeholder="Enter Car ID" id="car_id" name="carId">
                </div>
                <div class="form-group">
                    <label for="car_name">Car Name:</label>
                    <input type="text" value="${car.carName}" class="form-control" placeholder="Enter Car Name" id="car_name" name="carName">
                </div>
                <div class="form-group">
                    <label for="car_model">Car Model:</label>
                    <input type="text" value="${car.carModel}" class="form-control" placeholder="Enter Car Model" id="car_model" name="carModel">
                </div>
                <div class="form-group">
                    <label for="car_price">Car Price:</label>
                    <input type="text" value="${car.carPrice}" class="form-control" placeholder="Enter Car Price" id="car_price" name="carPrice">
                </div>
                <div class="form-group">
                    <label for="car_date">Registration Date:</label>
                    <input type="text" readonly value="${car.regDate}" class="form-control" placeholder="Enter Registration Date" id="car_date" name="regDate">
                </div>
                <button type="button" id="update_btn" class="btn btn-primary">Update</button>
                <button type="button" id="delete_btn" class="btn btn-danger">Delete</button>
            </form>
        </div>
    </div>
</div>
