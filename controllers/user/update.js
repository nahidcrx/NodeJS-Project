var express = require('express');
var router = express.Router();

var validationRules = require.main.require('./Validation-rules/rules');
var asyncValidator = require('async-validator');

var ad_post = require.main.require('./models/user/update');

router.get('/delete/:id', function(req, res){
	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//res.render('home/home_index');
	var adid= req.params.id;
	ad_post.delete(adid, function(result){
		res.redirect('/home/profile');
	});
	
});


router.get('/insert/:id', function(req, res){
	if(!req.session.username){
		res.redirect('/login');
		return;
	}
	//console.log(req.params.id);
	res.render('create/add_post', {errs: []});
	
	});




router.post('/insert/:id', function(req, res){

	if(!req.session.username){
		res.redirect('/login');
		return;
	}

	var rules= validationRules.addpost;


	//console.log(req.body.pname);

    

	var data= {

	 regid: req.params.id,
     pn : req.body.pname,
	 pc : req.body.product_category,
	 qn : req.body.quantity,
	 ppu : req.body.price_per_unit,
	 dc : req.body.product_description,
	 ph : req.body.phone,
	 dv : req.body.product_division

    };

        var validator = new asyncValidator(rules);
    validator.validate(data,function(errors, fields){
    	if(!errors){

    			ad_post.insert(data, function(obj){
		//console.log(status);

			//req.session.username = un;
			res.redirect('/home/profile');
			//res.send('Success');


	});

    	}

    	else{
    		res.render('create/add_post', {errs: errors});
    	}

    });













});

module.exports = router;