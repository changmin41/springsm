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
    let chart9 = {
        chart: null,
        init: function () {
            this.setupChart();  // 차트 초기화
            setInterval(() => {
                this.getLogData();  // 1초마다 로그 데이터 갱신
            }, 1000);
        },
        getLogData: function () {
            // logs/power.log에서 마지막 데이터를 읽어오는 API 요청
            $.ajax({
                url: '/logs/lastData',  // 로그에서 데이터를 받아오는 경로
                success: (data) => {
                    this.addPointToChart(data);  // 차트에 데이터 추가
                }
            });
        },
        addPointToChart: function (data) {
            const x = (new Date()).getTime();  // 현재 시간
            const y = parseFloat(data);  // 로그 파일에서 받은 마지막 데이터를 숫자로 변환

            // 차트에 새로운 포인트 추가
            this.chart.series[0].addPoint([x, y], true, true);
        },
        setupChart: function () {
            this.chart = Highcharts.chart('container', {
                chart: {
                    type: 'spline',
                },
                time: {
                    useUTC: false
                },
                title: {
                    text: '실시간 로그 데이터'
                },
                xAxis: {
                    type: 'datetime',
                    tickPixelInterval: 150,
                    maxPadding: 0.1
                },
                yAxis: {
                    title: {
                        text: '값'
                    },
                    plotLines: [
                        {
                            value: 0,
                            width: 1,
                            color: '#808080'
                        }
                    ]
                },
                tooltip: {
                    headerFormat: '<b>{series.name}</b><br/>',
                    pointFormat: '{point.x:%Y-%m-%d %H:%M:%S}<br/>{point.y:.2f}'
                },
                legend: {
                    enabled: false
                },
                exporting: {
                    enabled: false
                },
                series: [
                    {
                        name: '로그 데이터',
                        lineWidth: 2,
                        color: Highcharts.getOptions().colors[2],
                        data: []  // 초기 데이터는 비워둠, 로그 데이터가 추가됨
                    }
                ]
            });
        }
    };

    $(function () {
        chart9.init();  // 차트 초기화 및 데이터 로딩
    });
</script>

<div class="col-sm-10">
    <h2>차트 페이지</h2>
    <div id="container"></div>
</div>
