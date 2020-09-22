'use strict';

$(function(){
	$('input[type="button"]').on('click',function(){
		
		//사용자가 입력한  id값 가져오기
		//input요소의 값 접근 : val()
		let $userid= $('#user-id').val();
		
		$.ajax({
			url:'idCheck',
			data:'userid='+$userid,
			success:function(result){
				
				let $result = $('.result');
				
				if($userid.length===0){
					$('#user-id').focus();
				}else{
				
				if(result ==='1'){
					$result.html('중복된 아이디입니다');
					$result.addClass('duple');
					$result.removeClass('unduple');
				}else{
					$result.html('사용가능한 아이디입니다');
					$result.addClass('unduple');
					$result.removeClass('duple');
				}
				}
			}
			
		});
		
	});
	
	
});