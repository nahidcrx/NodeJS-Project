var express = require('express');
var router = express.Router();
var home_index = require.main.require('./models/home/home_index');
router.get('/', function(req, res){
	//res.render('home/home_index');
	home_index.getAll(function(result){
		res.render('home/home_index',{product_info : result});
	});
	
});
router.get('/details/:id', function(req, res){
	//res.render('home/home_index');
	var id= req.params.id;
	home_index.get(id,function(result){
		res.render('home/details',result);
	});
	
});

module.exports = router;