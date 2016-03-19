$(document).ready(function() {



	$("#portfolio_grid").mixItUp();

	$(".s_portfolio li").click(function() {
		$(".s_portfolio li").removeClass("active");
		$(this).addClass("active");
	});

	$(".popup").magnificPopup({type:"image", closeOnContentClick: true});
	$(".popup_content").magnificPopup({type:"image", midClick: true, closeOnContentClick: true});

	$(".top_text p").animated("fadeInDown", "fadeOutUp");
	$(".top_text h1, .section_header").animated("fadeInUp", "fadeOutDown");
	$(".animation_j").animated("flipInY", "flipInY");

	function heightDetect() {		
	$(".main_head").css("height", $(window).height());
	};
	heightDetect();
	$(window).resize(function(){
		heightDetect();
	});



	$("input, select, textarea").jqBootstrapValidation();
});

$(window).load(function() {

	$(".loader_inner").fadeOut();
	$(".loader").delay(400).fadeOut("slow");

});