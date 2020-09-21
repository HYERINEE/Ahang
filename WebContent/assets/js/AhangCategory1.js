var slide = document.querySelector('.slides'),
	slide1 = document.querySelecttorAll('.slides li'),
	
	currentIdx =0,
	slideCount =slide.lenght,
	prevBtn = document.querySelector('.prev'),
	slidewidth =300,
	slidemargin =30,
	nextBtn = document.querySelector('.next');
	
	slide.style.width =(slidewidth+slidemargin)*slideCount-slidemargin +'px';
	
	function moveSlide(num){
		slide.style.left = -num *330 +'px';
		currentIdx =num;
	}
	nextBtn.addEventListener('click', function(){
		moveSlide
	});