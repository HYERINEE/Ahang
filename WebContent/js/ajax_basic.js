'use strict';

$(function(){
   
   $('button').on('click', function(){
      
      //ajax(비동기통신):화면 갱신없이 필요한 데이터만을 요청/응답하는 기술
      //ajax기본구조
      //url: 요청할 서버의 주소
      //success: 서버에 요청을 성공했을 때 동작하는 메소드
	  //data: 요청할때 서버에 보낼 데이터
	  //dataType: 응답받을 데이터의 포맷설정(xml,plain,json,html,...)
	  //error:요청에 실패했을때 동작하는 메소드
	  //type:데이터 전송방식 설정(get/post)

      $.ajax({
         url:'http://www.kobis.or.kr/kobisopenapi/webservice/rest/boxoffice/searchDailyBoxOfficeList.json?key=430156241533f1d058c603178cc3ca0e&targetDt=20200914',
         success:function(res){
			//응답받은 데이터를 가져올때 function()에 매개변수를 지정해줄 것!
			console.log(res);
			console.log(res.boxOfficeResult);
			console.log(res.boxOfficeResult.dailyBoxOfficeList);
            console.log('서버 요청 성공!');

			let movieList = res.boxOfficeResult.dailyBoxOfficeList;
			
			movieList.forEach(function(movie){
				console.log(movie.movieNm);//영화이름만 출력
			});


         }
         
      }); //end ajax
   }); //end on()
}); //end function()
