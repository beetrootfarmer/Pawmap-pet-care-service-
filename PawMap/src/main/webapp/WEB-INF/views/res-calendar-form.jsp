<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ include file="layout/header.jsp" %>

    

    <style>
        .calendar-left{
            margin-top: 0px;
        }
        table, th, td { 
            border:1px solid gray;  /* 표의 테두리 - 1px 회색 실선 */
            border-collapse:collapse;  /* 표 테두리와 셀 테두리 합치기 */
    
        }
        th, td {
            width:150px;  /* 셀 너비 */
            padding:5px;  /* 셀 패딩(테두리와 내용 사이의 여백) */
        }
    
        #test-span {
            width: 350px;
            color: #eb8f1f;
        }
        th {
            color: #eb8f1f;
        }
        .all-title-box{
            background-image: none;
        }
    </style>

    <script src="${pageContext.request.contextPath}/js/calendar.js"></script>

    <!-- 캘린더   -->
<form action="insertSchedule" method="post">
    <h1>사업자 번호 ${principal.user.comNum}</h1>
    <h1>동물병원 닉네임 ${principal.user.userNickname}</h1>
    <h1>유저 아이디 ${principal.user.userId}</h1>
    <input type="hidden" name="userId" value="${principal.user.userId}">
    <input type="hidden" name="comNum" value="${principal.user.comNum}">
    <div class="container">
        <div class="row">
            <div class="calendar_box" >
                <div class="sc col-lg-6 col-md-6 col-sm-12">
                    <table class="scriptCalendar" style="position: relative; float: left;">
                        <thead>
                            <tr>
                                <td><input type="radio" name="date" value="sun"/><p>일</p></td>
                                <td><input type="radio" name="date" value="mon"/><p>월</p></td>
                                <td><input type="radio" name="date" value="tue"/><p>화</p></td>
                                <td><input type="radio" name="date" value="wed"/><p>수</p></td>
                                <td><input type="radio" name="date" value="thu"/><p>목</p></td>
                                <td><input type="radio" name="date" value="fri"/><p>금</p></td>
                                <td><input type="radio" name="date" value="sat"/><p>토</p></td>
                            </tr>
                        </thead>
                    </table>
                </div>
        
        <!--button-->
                <div class="calendar-left col-lg-6 col-md-6 col-sm-12" style="position: relative; float: left;">
                    <div class="events-times"><strong style="color: white; size: 2em;">오전</strong>
                     <br/>
                        <ul class="calendartime">
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="0900">09:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="0930">09:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1000">10:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1030">10:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1100">11:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1130">11:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1200">12:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1230">12:30</li>
                    
                        </ul>
                    </div>
                     <br>
                    <div class="events-times"><strong style="color: white; size: 2em;">오후</strong>
                    <br>
                        <ul  class="calendartime ">
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1400">14:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1430">14:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1500">15:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1530">15:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1600">16:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1630">16:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1700">17:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1730">17:30</li>
                        </ul>
                    </div>
                    <br>
                    <div class="events-times"><strong style="color: white; size: 2em;">야간</strong>
                    <br>
                        <ul  class="calendartime">
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1900">19:00</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="1930">19:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="2000">20:00</li>                        
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="2030">20:30</li>
                            <li><input type="checkbox" class="calendar-time" name="scheduleTime" value="2100">21:00</li>
                        </ul>
                    </div>
                    <br>
                </div>
            </div>
        </div>
        <div class="r form-group ml-5">
            <div >
                <input type="submit" value="작성완료" class="btn btn-complete">
            </div>
        </div>
    </div>    
</form>    
<div class="container" style="text-align: center; margin-top: 5%;" >
    
    <table style="display:inline-block; width: auto; height: auto;">
        <tr>
            <th><span style="width: 100px;">시간표</span></th>
            <th><span style="width: 100px;">일</span></th>
            <th><span>월</span></th>
            <th><span>화</span></th>
            <th><span>수</span></th>
            <th><span>목</span></th>
            <th><span class="bb">금</span></th>
            <th><span >토</span></th>
        </tr>
        <c:forEach var="hosScheduleTable" items="${hosScheduleTable}">
            <tr>
                <td>${hosScheduleTable.scheduleTime}</td>
                <c:choose>
                    <c:when test="${hosScheduleTable.sun eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.mon eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.tue eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.wed eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.thu eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.fri eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
                <c:choose>
                    <c:when test="${hosScheduleTable.sat eq 'yes'}">
                        <td>예약 가능 시간</td>
                    </c:when>
                    <c:otherwise>
                        <td></td>
                    </c:otherwise>
                </c:choose>
            </tr>
        </c:forEach>
    </table>    
</div>

<div class="board-type  mt-5">
    <h1> ${hosNickname[0].user_nickname} 예약회원보기  </h1>
</div>
<hr class="line-paint">
<input id="hospitalComNum" type="hidden" value="${principal.user.comNum}"> 
<div class="container">
<div class="row">
    <div class="calendar_box" >
        <div class="sc col-lg-6 col-md-12 col-sm-12">
            <table  class="scriptCalendar mb-3" style="position: relative; float: left; ">
                <thead>
                    <tr>
                        <td onClick="prevCalendar();" style="cursor:pointer;">&#60;&#60;</td>
                        <td colspan="5">
                            <span id="calYear">YYYY</span>년
                            <span id="calMonth">MM</span>월
                        </td>
                        <td onClick="nextCalendar();" style="cursor:pointer;">&#62;&#62;</td>
                    </tr>
                    <tr>
                        <td value="sun">일</td>
                        <td value="sun">월</td>
                        <td value="sun">화</td>
                        <td value="sun">수</td>
                        <td value="sun">목</td>
                        <td value="sun">금</td>
                        <td value="sun">토</td>
                    </tr>
                </thead>
                <tbody></tbody>
            </table>
        </div>
            
    
    <!--button-->
        <div class="calendar-left col-lg-6 col-md-12 col-sm-12" style="position: relative; float: left; margin-top: 0px;">
            <strong  style="color: white; size: 2em; ">예약한 회원</strong>
            <div class="events-time mt-5" >
                <br/>
                <ul class="calendartime">

                </ul>
            </div>
            <br>
            <br>
        </div>
    </div>    
</div>
</div>   
     
<!-- </form>     -->
<!-- End 캘린더  -->

<script>
/**
* @brief   날짜 선택
* @details 사용자가 선택한 날짜에 체크표시를 남긴다.
*/
function calendarChoiceDay(column) {

    // @param 기존 선택일이 존재하는 경우 기존 선택일의 표시형식을 초기화 한다.
    if(document.getElementsByClassName("choiceDay")[0]) {
        document.getElementsByClassName("choiceDay")[0].style.backgroundColor = "#FFFFFF";

        document.getElementsByClassName("choiceDay")[0].classList.remove("choiceDay");

    }

    // @param 선택일 체크 표시
    column.style.backgroundColor = "#FF9999";
    
    // alert(11111);

    console.log(column.id);
    
    // @param 선택일 클래스명 변경

    column.classList.add("choiceDay");

    // 선택한 날짜를 input에 밸류값으로 넣어서 포스트태우기
    let com_num = $("#hospitalComNum").val();
    let resDate = column.id;
    console.log("comNum =======" + com_num);
    console.log("resDate====="+resDate);
    
    $.ajax({
        url: 'getReservationList',
        data: {date: column.id,comNum:com_num},
        type: 'POST',
        success: function(obj) {
            var data = JSON.parse(obj);
            console.log(data);
            var htmlString = "";
            let overlapTime = [];
                
            for(var i = 0; i<data.length; i++){
                
                htmlString += "<h3> 시간 : "+data[i].schedule_time+" , 닉네임 : "+ data[i].user_nickname+",  ";
                htmlString += "<button onclick='location.href='/pawmap/reservation/writeMedicalRecord?comNum='>";
                htmlString += "진단서 작성";
                htmlString += "</button>";    
                htmlString += "</h3>"; 
                 
            }

            console.log("overlapTime==========="+overlapTime);
            $(".events-time").html(htmlString);
            
        },
        error: function(e) {
            
        }
    });
}

function fillzero(month) {
    return month.length >= 2 ? month : '0' + month;
}
</script>




    <%@ include file="layout/footer.jsp" %>