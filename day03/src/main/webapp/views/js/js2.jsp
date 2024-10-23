<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script>
    let v1 =10.1; //number 타입
    let v2 ='"text"'; // String 타입
    let v3 ="text"; // String 타입
    let v4 =true; //boolean 타입
    let v5 = function (){}; //funtion 타입
    function v6(){}; // funtion 타입
    let v7; //undefined타입
    let v8 =[1,2,3,'aa']; //object 타입
    let v9 ={
        'id' : 'id01',
        'name':'james',
        go:function (){},
        stop:function (){}
    };
    let v10=[{},{},{}];//jason(javascript object notation)


    alert(typeof (v9));
</script>
<div class="col-sm-10">


    <h2> j2페이지</h2>
    <h5> Title description, sep 2, 2017</h5>

</div>