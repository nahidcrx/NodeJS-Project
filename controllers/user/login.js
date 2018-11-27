var express = require('express');
var router = express.Router();
var login = require.main.require('./models/user/login');
router.get('/', function(req, res){
	res.render('login/index');
	//res.send('Hello');
});

// router.post('/', function(req, res){
// 	var un = req.body.uname;
// 	var ps = req.body.pass;
// 	if(un==ps)
// 		{
// 			//req.session.username = un;
// 			res.send('Congo');
// 		}
// 		else
// 		{
// 			res.send('Invalid');
// 		}

// 	});

router.post('/', function(req, res){
	var un = req.body.uname;
	var ps = req.body.pass;
	login.validateUser(un, ps, function(status){
		console.log(status);
		if(status)
		{
			req.session.username = un;
			
			res.redirect('../home');
		}
		else
		{
			res.send('Invalid');
		}
	});
	
});

module.exports = router;