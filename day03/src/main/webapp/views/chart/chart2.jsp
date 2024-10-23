<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #container {
        width: 700px;
        height: 500px;
        border: 2px solid red;
    }
</style>

<script>
    const chartData = {
        2020: [
            { name: '남자', data: [150, 330, 480, 260, 210, 420, 370, 460, 510, 540, 580, 620] },
            { name: '여자', data: [130, 210, 170, 250, 300, 410, 380, 450, 490, 530, 570, 610] }
        ],
        2021: [
            { name: '남자', data: [160, 240, 190, 270, 320, 430, 400, 490, 520, 550, 590, 630] },
            { name: '여자', data: [540, 220, 180, 260, 310, 420, 190, 460, 700, 540, 580, 620] }
        ],
        2022: [
            { name: '남자', data: [170, 250, 300, 280, 330, 440, 410, 500, 530, 560, 600, 640] },
            { name: '여자', data: [150, 230, 190, 270, 720, 430, 220, 470, 410, 550, 590, 630] }
        ],
        2023: [
            { name: '남자', data: [180, 260, 410, 290, 340, 450, 420, 510, 540, 570, 610, 650] },
            { name: '여자', data: [160, 740, 200, 280, 330, 440, 410, 480, 520, 760, 600, 640] }
        ],
        2024: [
            { name: '남자', data: [190, 270, 220, 300, 350, 460, 430, 520, 550, 580, 620, 660] },
            { name: '여자', data: [170, 250, 210, 290, 340, 450, 420, 490, 530, 570, 610, 650] }
        ]
    };

    let chart2 = {
        init: function (year = 2020) {
            this.display(chartData[year], year);  // 기본 연도 2020 데이터 표시
        },
        display: function (data, year) {
            Highcharts.chart('container', {
                chart: {
                    type: 'area'  // 차트 타입을 area로 설정
                },
                title: {
                    text: `${year}년 월별 남자/여자 매출`
                },
                xAxis: {
                    categories: [
                        '1월', '2월', '3월', '4월', '5월', '6월',
                        '7월', '8월', '9월', '10월', '11월', '12월'
                    ],
                    title: { text: '월' }
                },
                yAxis: {
                    title: { text: '매출 (단위: 천원)' }
                },
                tooltip: {
                    pointFormat: '{series.name}: <b>{point.y}</b> 천원'
                },
                plotOptions: {
                    area: {
                        marker: {
                            enabled: false,
                            symbol: 'circle',
                            radius: 2,
                            states: {
                                hover: {
                                    enabled: true
                                }
                            }
                        }
                    }
                },
                series: data  // 정적 데이터 사용
            });
        }
    };

    $(function () {
        chart2.init();  // 페이지 로딩 시 기본 2020년 데이터 표시

        // 버튼 클릭 시 해당 연도의 데이터로 차트 갱신
        $('button').on('click', function () {
            const year = $(this).text();  // 버튼 텍스트에서 연도 추출
            chart2.display(chartData[year], year);  // 해당 연도 데이터로 차트 표시
        });
    });
</script>

<div class="col-sm-10">
    <h2>월별 남자/여자 매출 차트</h2>
    <button>2020</button>
    <button>2021</button>
    <button>2022</button>
    <button>2023</button>
    <button>2024</button>
    <div id="container"></div>
</div>
