<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
    <link href="/css/next.css" rel="stylesheet">
    <script src="/js/next.js"></script>
</head>
<body>
<h1>next 페이지입니다!</h1>

<h3>해더3</h3>
<h3><em>  여기만 기울여져?</em> 해더4</h3>
<img src="/img/sldsld.jpg">
<p> 안녕 이건 단락이래 여기는 안기울려지나?</p>
<h2><s>나는 천재다</s> 글씨쓰는 곳</h2>
<abbr> 줄임말은 뭐하는 거지?</abbr>


<%--하나로 묶기--%>
<div>
<sub> 이건 아래 첨자</sub>
<sup> 이건 위 첨자</sup>
<ins> 이건 공동 작업 문서에 새로운 내용 삽입하느거</ins>
</div>

<code> printf("hello world!") 그냥도 써지는데?</code>
<table>
    <tr>
        <td rowspan="2"> 오쉣합쳐짐</td>
        <td> 1행2열</td>
        <td> 1행3열</td>
        <td> 1행4열</td>
        <td> 1행5열</td>
    </tr>

    <tr>
        <td> 2행1열</td>
        <td> 2행2열</td>
        <td> 2행3열</td>
        <td> 2행4열</td>
        <td > 2행5열</td>
    </tr>


</table>
<h1>가장 큰 제목</h1>
<h2>두 번째 제목</h2>
<p>이것은 문단입니다. <br>이 문장은 줄을 바꿔서 작성되었습니다.</p>
<p>이것은 <b>굵은 텍스트</b>와 <i>이탤릭체 텍스트</i>입니다.</p>
<p><strong>강조된 텍스트</strong>와 <em>강조된 이탤릭체 텍스트</em>의 차이를 보여줍니다.</p><hr>

</body>
<section> <h2> 내가 본체다 이놈들아 왜 중앙에 안써지지?</h2></section>
</html>
