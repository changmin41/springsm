<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    /*        window.onload =function (){ //문서가 준비되면 함수가 시작된다.
                document.querySelector('h5').innerHTML ='replace text...';};
                $('h5').text('repacle text'); //h5에 있는 택스트를 가져와라*/

    /*function display(datas){ for문 이렇게도 씀
        for(let i in datas){
            alert(datas[i].id);
        }
    };*/

    function display(datas){
        let result ='';
        $(datas).each(function (index,data){
        result += '<tr>';
        result += '<td>'+ data.id + '</td>';
        result += '<td>'+ data.name + '</td>';
        result += '<td>'+ data.age + '</td>';
        result += '</tr>';
     });
        $('#cdata > tbody').html(result); //cdata아래 tbody안에 result가 들어간다.
    };



    function getdata() {
        let datas = [
            {'id': 'id01', 'name': '제임스1', 'age': 10},
            {'id': 'id02', 'name': '제임스2', 'age': 20},
            {'id': 'id03', 'name': '제임스3', 'age': 30},
            {'id': 'id04', 'name': '제임스4', 'age': 40},
            {'id': 'id05', 'name': '제임스5', 'age': 50}
        ];
        display(datas);
    };


    $(document).ready(function () { //문서가 준비되면 함수가 시작된다.
        $('#btn_get').click(function () { //버튼을 클릭하면 함수가 실행된다.
            getdata();// 여기에 함수쓰면 길어져서 함수를 호출함.
        });

    });
</script>
<div class="col-sm-10">

    <h2>j3페이지</h2>
    <button id="btn_get">get Data</button>
    <h5> 타이틀 블라블라</h5>

    <table class="table" id="cdata">
        <thead class="thead-dark">
        <tr>
            <th>ID</th>
            <th>NAME</th>
            <th>Age</th>
        </tr>
        </thead>
        <tbody>

        </tbody>
    </table>
</div>

