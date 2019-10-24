<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
    <meta charset='utf-8'>
    <title>demo</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/font-awesome.min.css"/>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/lib/calendar/calendar.css"/>
    <script src="${pageContext.request.contextPath}/lib/calendar/calendar.js" type="text/javascript"></script>
</head>
<body>
<div class='calendar' id='calendar'  style="margin: auto; width: 640px; height: 450px;"></div>
<script>
    var calender = new $Calendar("calendar");
    var data = function (e) {
        var data = [];
        var date = new Date();
        for (var i = 0; i < 30; i++) {
            var time = new Date(date.getFullYear(), date.getMonth(), date.getDate() + i + 1);
            if (Math.random() > 0.5) {
                data.push({
                    time: time,
                    text: "￥5999起"
                })
            }
        }
        return data;
    }();
    calender.setData({
        data: data,
        click: function (e) {
            console.debug(e);
        }
    });
</script>
</body>
</html>