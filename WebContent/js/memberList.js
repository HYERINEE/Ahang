'use strict';

$(function(){
	$('button').on('click',function(){
		
		$.ajax({
			url:'memberList',
			dataType:'json',
			success:function(memberList){
				console.log('회원목록>> ',memberList);
			}
			
		})//end ajax()

	});//end on()
	
});//end function()