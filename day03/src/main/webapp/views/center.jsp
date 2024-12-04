<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>

<h1><spring:message code="site.title"  arguments="aa,aa"  /></h1>
<script>
    let center = {
        init:function(){
            $.ajax({
                url:'<c:url value="/wh"/>',
                success:(result)=>{
                    let wtext =result.response.body.items.item[0].wfSv;
                    $('#wh').text(wtext);
                }

            });
            $.ajax({
                url:'<c:url value="/owh"/>',
                success:(result)=>{
                    let owtext =result.weather[0].description;
                    $('#owh').text(owtext);
                }
            });
        }
    };
    $(function(){
        center.init();
    });
</script>

<div class="col-sm-10">

    <h2>오늘의 날씨</h2>
    <h5>Title description, Sep 2, 2017</h5>
    <p id="wh"></p>
    <p id="owh"></p>
    <p>Some text..</p>
    </div>

