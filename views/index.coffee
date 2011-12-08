ul databind:"template: { name: 'noticeTemplate', foreach: notices }"

div id:"addNotice", ->
		textarea id:"noticeInput", type:"textarea"
		a href:"#", id:"addNoticeButton", -> "Add Me"

	
	
