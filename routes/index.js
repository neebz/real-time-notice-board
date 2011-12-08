var global = require("../app") 
/*
 * GET home page.
 */


exports.index = function(req, res){
	console.log(global.everyone.now.notices);
	
 	res.render('index.coffee');
};

exports.add_notice = function(notice){
	console.log("adding notice");
	//global.everyone.now.notices = ["ahan", "whatever"];
	global.everyone.now.notices.push(notice);
	global.everyone.now.getNotice(notice);
	console.log(global.everyone.now.notices);
};