var express = require('express');
var router = express.Router();
var validationRules = require.main.require('./Validation-rules/rules');
var asyncValidator = require('async-validator');

var reg = require.main.require('./models/user/reg');
router.get('/', function(req, res){
	res.render('create/ureg', {errs: []});
	
});

router.post('/', function(req, res){

	var rules= validationRules.registration;



	var data= {
	 fn : req.body.firstname,
	 ln : req.body.lastname,
	 un : req.body.uname,
	 ps : req.body.pass,
	 pn : req.body.phone,
	 dv : req.body.div,
	 dr : "Dhaka",
	 tp : req.body.typ,
	 em : req.body.mail,
	 nd : req.body.nid,
	 gn : req.body.gender,
	 day : req.body.day,
	 mn : req.body.month,
	 yr : req.body.year,
	 nl : req.body.nation

    };

    var validator = new asyncValidator(rules);

    validator.validate(data,function(errors, fields){

    	console.log(data);

    	if(!errors){

    		console.log('No Error');

    		reg.insert(data, function(obj){
		//console.log(status);

			//req.session.username = un;
			//res.redirect('/home');
			res.redirect('/login');


	});

    	}

    	else{
    		console.log(errors);


    		res.render('create/ureg', {errs: errors});
    	}

    });


	

});


module.exports = router;