doctype 5
html -> 
	head ->
		title "A notice board using Node, Now and Knockout"
		link rel: 'stylesheet', href: '/stylesheets/style.css'
		script src: '/nowjs/now.js'
		script src: '/javascripts/jquery.min.js'
		script src: '/javascripts/jquery.tmpl.min.js'
		script src: '/javascripts/knockout-1.2.1.js'
		coffeescript ->
			now.ready ->
				#now.addNotice "what the heck"
				window.vm = {notices: ko.observableArray(now.notices)}
				ko.applyBindings window.vm
				console.log window.vm
				now.getNotice = (notice)->
				 	window.vm.notices(now.notices)
					#console.log notice
					false
				false	
			$(document).ready ->
				$("#addNoticeButton").on "click", ->
					notice = $("#noticeInput").val()
					if notice
						now.addNotice notice
					false
				false

	body ->
		@body
		
		
script type: 'text/html', id: 'noticeTemplate', ->
	li databind:'text: $data'