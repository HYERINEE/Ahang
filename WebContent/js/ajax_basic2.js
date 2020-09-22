'use strict';

$(function(){
   
   $('button').on('click', function(){
      
	   let obj = {
	      num:123,
	      alpha :'hello',
	      hangul : '안녕'
	   };
	      
		//ajaxTest?num=123&alpha=hello&hangul=16진수 형태
		//url 속성에서 요청할 서버주소를 적는건데 AjaxTest는 실제 서블릿클래스 이름이고 
		//urlMapping에 적힌걸 써줘야 요청이 됩니다~그럼 이거말하는건가요?? 그건 프로젝트 이름이죠 아 ㅁ
		//urlMapping이 어떤거냐면
      $.ajax({
         url: 'Ajax',
       	 data : obj,
		 dataType:'json',
         success:function(res){
   
	         //h1요소의 값으로 변경:html(값)
			//res에는 {name:"임명진"}데이터가 담겨있기 때문에 .으로 접근
	         $('h1').html(res.name);
	   
	         console.log(res);
	         console.log('서버 요청 성공!');
         }
         
      }); //end ajax
   }); //end on()
}); //en