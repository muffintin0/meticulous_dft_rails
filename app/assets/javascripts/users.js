$(function(){
	//users infinite scolling
	var usersOffset = 0;
	var pageLimit = parseInt($("#usersDiv").data("page-limit")); 
	var usersTotal = parseInt($("#usersDiv").data("users-total")); 
	$(window).scroll(function(){
		if ( $(window).scrollTop()>=$(document).height()-$(window).height()-10 ){
			usersOffset += pageLimit;
			if (usersOffset < usersTotal){
				$.ajax({
					url: "/users/show-more",
					data: {offset: usersOffset}
				});
			}
		}
	});
});
