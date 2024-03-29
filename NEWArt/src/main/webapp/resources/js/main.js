//구글 검색 기능
function searchFunction(){
		var addr = "https://www.google.com/search?q=";
		var txt = document.getElementById("googleinput").value;
		var openNewWindow = window.open("about:blank");
		
		openNewWindow.location.href = addr.concat(txt);
	}

// 더블텝 메뉴

$(function () {
    $('.tabcontent > div').hide();
    $('.tabnav a').click(function () {
        $('.tabcontent > div').hide().filter(this.hash).fadeIn();
        $('.tabnav a').removeClass('active');
        $(this).addClass('active');
        return false;
    }).filter(':eq(0)').click();
});
// 달력
$(function () {
    var today = new Date();
    var date = new Date();

    $("input[name=preMon]").click(function () { // 이전달
        $("#calendar > tbody > td").remove();
        $("#calendar > tbody > tr").remove();
        today = new Date(today.getFullYear(), today.getMonth() - 1, today.getDate());
        buildCalendar();
    })

    $("input[name=nextMon]").click(function () { //다음달
        $("#calendar > tbody > td").remove();
        $("#calendar > tbody > tr").remove();
        today = new Date(today.getFullYear(), today.getMonth() + 1, today.getDate());
        buildCalendar();
    })


    function buildCalendar() {

        nowYear = today.getFullYear();
        nowMonth = today.getMonth();
        firstDate = new Date(nowYear, nowMonth, 1).getDate();
        firstDay = new Date(nowYear, nowMonth, 1).getDay(); //1st의 요일
        lastDate = new Date(nowYear, nowMonth + 1, 0).getDate();

        if ((nowYear % 4 === 0 && nowYear % 100 !== 0) || nowYear % 400 === 0) { //윤년 적용
            lastDate[1] = 29;
        }

        $(".year_mon").text(nowYear + "년 " + (nowMonth + 1) + "월");

        for (i = 0; i < firstDay; i++) { //첫번째 줄 빈칸
            $("#calendar tbody:last").append("<td></td>");
        }
        for (i = 1; i <= lastDate; i++) { // 날짜 채우기
            plusDate = new Date(nowYear, nowMonth, i).getDay();
            if (plusDate == 0) {
                $("#calendar tbody:last").append("<tr></tr>");
            }
            $("#calendar tbody:last").append("<td class='date'>" + i + "</td>");
        }
        if ($("#calendar > tbody > td").length % 7 != 0) { //마지막 줄 빈칸
            for (i = 1; i <= $("#calendar > tbody > td").length % 7; i++) {
                $("#calendar tbody:last").append("<td></td>");
            }
        }
        $(".date").each(function (index) { // 오늘 날짜 표시
            if (nowYear == date.getFullYear() && nowMonth == date.getMonth() && $(".date").eq(index).text() == date.getDate()) {
                $(".date").eq(index).addClass('colToday');
            }
        })
    }
    buildCalendar();
})

//메인화면에서 관심없는 게시글 안보이게 하는 버튼 구현
$(function () {
	$("button[class=outcardimage]").click(function(){
		  
		$(this).closest(".list").hide();
		 		
	})
})

// 실시간 게시글 url 주소 복사 버튼 구현
$(function(){
$('button[class=morecardimage]').click(function() {

    // 화면에서 hidden 처리한 input box type을 text로 일시 변환
    $(this).next('#data-area').attr('type', 'text');
    
    // input에 담긴 데이터를 선택
    $(this).next("#data-area").select();
    

    //  clipboard에 데이터 복사
    var copy = document.execCommand('copy');
    
   // input box를 다시 hidden 처리
    $(this).next('#data-area').attr('type', 'hidden');
    
    // 사용자 알림
    if(copy) {
    	alert("주소가 복사되었습니다.");
    }
})
})

//검색 기능
$(document).ready(function(){
	$("#add").on("click",function(){
		$("input[name='pageNum']").val("1");
		$("#searchForm").submit();
	})
})

//최근검색어 클릭시 검색창 이동
$(document).ready(function(){
             $("ul>li").children('span').click(function () {
            	 var sreach_addr = "http://localhost:8080/board/list?keyword=";
            	 //var sreach_txt =  window.localStorage.getItem(todos);
            	 //alert($(this).text());
            	            	
         		 location.href = sreach_addr.concat($(this).text());
            	 //alert(sreach_txt);
             });
        });

//바로 글쓰기 버튼 로그인 하지 않았을때 경고문
$(document).ready(function(){
	$("#please_login").on("click",function(){
		alert("로그인이 필요한 서비스입니다");
	})
})

//github 새창열기
$(document).ready(function(){
	$(".direct_github").on("click",function(){		
		var openNewWindow = window.open("https://github.com/");
		
		openNewWindow.location.href = addr.concat();
	})
})
//최근검색어를 불러오는 기능
 function eventKeyup(str){
		$("#keyword2").val(str);    // jQuery 이용
		//document.all.afterAmt.value = str;    // jsp name 이용
		//document.getElementById("afterAmt").value = str;   // jsp id 이용
	}


