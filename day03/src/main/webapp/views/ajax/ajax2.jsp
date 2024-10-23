<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h2>인기 순위</h2>
<ul id="rankList">
    <!-- 순위 리스트가 여기에 표시됩니다. -->
</ul>

<script>
    let ajax1 = {
        init: function () {
            // 3초마다 getData 함수를 실행
            setInterval(() => { this.getData(); }, 3000);
        },
        getData: function () {

        },
        display: function () {
        }
    };

    // 페이지 로드 시 init 함수 호출
    $(document).ready(function () {
        ajax2.init();
    });

</script>