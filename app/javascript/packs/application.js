// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
import 'bootstrap'

$(function(){
	var v=$('#lbt li:first-child').width();

	$.each($(".lb"),function(i,n){
	$("li").eq(i).css('left',i*v)
	});

	
	
});

$(function(){
	var v=$('#lbt li:last-child').width();

	$("#prev").click(function(){
		if (!$("li").is(':animated')) {
		$("#lbt").prepend($("#lbt li:last-child"));
		$("#lbt li:first-child").css('left',-v);
		$("#lbt li:first-child").css('left',-v);
		var a=$("li").animate({
			left:'+='+v
		},1000);
		}
	});
	$("#next").click(function(){

		if (!$("li").is(':animated')) {
		$("#lbt").append($("#lbt li:first-child").clone())
		$("#lbt li:last-child").css('left',+2*v);
		$("li").animate({
			left:'-='+v
		},1000);
		setTimeout(function(){
			$("li:first-child").remove();
		},1000);
		}
	});
})
