<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-sm-10">
    <script>


        let login = {
            init: function () {
                $('#login_form > button').click(() => {
                    this.check();
                });

                // Enter 키 눌렀을 때 폼 제출되도록 추가
                $('#login_form').on('keyup', (event) => {
                    if (event.keyCode === 13) {  // Enter key code is 13
                        this.check();
                    }
                });

                },
            check: function () {
                let id = $('#id').val();
                let pwd = $('#pwd').val();
                if (id == '' || id == null) {
                    alert('Id is Mandatory');
                    $('#id').focus();
                    return;
                }
                if (pwd == '' || pwd == null) {
                    alert('Pwd is Mandatory');
                    $('#pwd').focus();
                    return;
                }
                this.send();
            },
            send: function () {
                // method, action
                $('#login_form').attr('method', 'post');

                $('#login_form').attr('action', '/loginimpl');
                $('#login_form').submit();
            }
        }
        $(function () {
            login.init();

        });

    </script>
    <h2>login page</h2>
    <div class="row">
        <div class="col-sm-5">
            <form id="login_form">
                <div class="form-group">
                    <label for="id">id:</label>
                    <input type="text" class="form-control" placeholder="Enter ID" id="id" name="id" value="id01">
                </div>
                <div class="form-group">
                    <label for="pwd">Password:</label>
                    <input type="password" class="form-control" placeholder="Enter Password" id="pwd" name="pwd" value="pwd01">
                </div>
                <button type="button" class="btn btn-primary">Submit</button>
            </form>
        </div>
    </div>
</div>