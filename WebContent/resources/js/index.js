/**
 * 
 */
function colorTestResults(result){
	$(result).each(function() {
		if ($(this).text() < 100){
			$(this).css("background-color", "#ff0000");
		} else if ($(this).text() < 150){
			$(this).css("background-color", "#ff8000");
		} else if ($(this).text() < 200){
			$(this).css("background-color", "#ffff00");
		} else if ($(this).text() < 250){
			$(this).css("background-color", "#80ff00");
		} else if ($(this).text() < 300){
			$(this).css("background-color", "#00ff00");
		} else {
			$(this).css("background-color", "#00ff80");
		}
	})
}

$(document).ready(function(){
    colorTestResults(".scoreTest");
});

