<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<script>
    window.onload = function (){
        let h5 = document.querySelector('h5');
        h5.innerHTML ='Replace H5';
        let h6 = document.querySelector('#id01'); //테그는 그냥 쓰면 되는데 ID를 가져오려면 #을 써야한다.
        h6.innerHTML ='Replace H6';

        let btn = document.querySelector('#btn_click');
        btn.onclick = function (){
            h6.innerHTML = '버튼클릭';
        };

        let btn2 = document.querySelector('#btn_click2');
        btn2.onclick = function (){
            let c = confirm('너 갈래 지금...')
            if(c == true){
                location.href='<c:url value="/js/js2"/>';
            };
        };
    };
</script>


<div class="col-sm-10">
    <h5>이놈이 문제였고만</h5>
    <button id="btn_click">Header1바꾸기</button>
    <a href ="#" id="btn_click2">Click2</a>
    <h6 id="id01">Header1</h6>
    <h6 id="id02">Header2</h6>
    <h6 id="id03">Header3</h6>
</div>


