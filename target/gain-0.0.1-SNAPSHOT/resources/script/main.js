
//삭제
function deletes (key,date,surl) {
	 $.ajax({
		url : surl,
		data : {
			adate : date,
			akey  : key
		},
		type : 'POST',
		dataType : 'text',
		success : function(response) {
			$('#'+date).empty()
			
		},
		error : function(response) {
			 alert('error')
		}
	}) 
}

/*네비게이션*/
function nabei () {
	//Default Action
	$(".tab_content").hide() //Hide all content
	$("ul.tabs li:first").addClass("active").show() //Activate first tab
	$(".tab_content:first").show() //Show first tab content
	
	//On Click Event
	$("ul.tabs li").click(function() {
		$("ul.tabs li").removeClass("active") //Remove any "active" class
		$(this).addClass("active") //Add "active" class to selected tab
		$(".tab_content").hide() //Hide all tab content
		var activeTab = $(this).find("a").attr("href") //Find the rel attribute value to identify the active tab + content
		$(activeTab).fadeIn() //Fade in the active content
		return false
	})

}



/*태그추가*/
function add_item (date,sit){
  

	var d = $('#'+date).clone(true)
	 $('#'+sit).append(d.removeClass('#'+date).attr('value', '벨류값').show())
	 
}


/*주소api*/
function sample4_execDaumPostcode() {
    new daum.Postcode({
        oncomplete: function(data) {
            var fullRoadAddr = data.roadAddress // 도로명 주소 변수
            document.getElementById('sample4_roadAddress').value = fullRoadAddr
        }
    }).open()
}


