var express = require('express');
var router = express.Router();
var home = require.main.require('./models/home/home_index');
var profile = require.main.require('./models/user/profile');

router.get('/', function(req, res){
	//res.render('home/home_index');
	if(!req.session.username){
		res.redirect('/login');
		return;
	}

	home.getAll(function(result){
		res.render('home/home',{product_info : result});
	});
	
});

router.get('/details/:id', function(req, res){

	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('home/home_index');
	var id= req.params.id;
	home.get(id,function(result){
		res.render('home/details',result);
	});
	
});

router.get('/ldetails/:id', function(req, res){

	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('home/home_index');
	var id= req.params.id;
	home.get(id,function(result){
		res.render('home/ldetails',result);
	});
	
});

router.get('/profile/my_info/:id', function(req, res){

	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('home/home_index');
	var id= req.params.id;
	profile.getInfo(id,function(result){
		//console.log(result);

		res.render('profile/my_info',result);
	});
	
});


router.get('/profile/my_info/update_info/:id', function(req, res){
	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('profile/update_info');
	var id= req.params.id;
	profile.getInfo(id,function(result){
		//console.log(result);

		res.render('profile/update_info',result);
	});
	
});


router.post('/profile/my_info/update_info/:id', function(req, res){

	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('profile/update_info');
	var id= req.params.id;

	var fn=req.body.firstname;
	var ln=req.body.lastname;
	var un=req.body.uname;
	var pa=req.body.pass;
	var ph=req.body.phone;
	var em=req.body.mail;




	profile.updateInfo(id,fn,ln,un,pa,ph,em,function(result){
		//console.log(result);

		res.redirect('/home/profile/my_info/'+id);
	});
	
});


router.get('/profile', function(req, res){
	//res.render('home/home_index');

	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//var id= req.params.id;
	profile.get(req.session.username,function(result){
		//res.render('profile/profile',result);
		req.session.regid= result.ID;

		//console.log(result.ID);

		//console.log(req.session.regid);

		profile.getAll(result.ID,function(obj){
			//console.log(obj);
		res.render('profile/profile',{my_product : obj,name: req.session.username,id: req.session.regid});

	});
		//console.log(result.ID);
		//req.session.id= ID;
	});
	
});
module.exports = router;