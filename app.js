// DECLARATION
var express = require('express');
var app = express();
var port = 1337;
var bodyParser = require('body-parser');

var expressSession = require('express-session');

var login = require('./controllers/user/login');
var logout = require('./controllers/logout');
var reg = require('./controllers/user/reg'); 
var home_index = require('./controllers/home/home_index'); 
var home = require('./controllers/home/home');
var ad_post = require('./controllers/user/update'); 

// CONFIGURATION
app.set('view engine', 'ejs');


// MIDDLEWARES
app.use(bodyParser.urlencoded({extended:false}));
app.use(expressSession({secret: 'oh yeah', saveUninitialized: true, resave: false}));

app.use('*', function(req,res,next){
	if(req.originalUrl == '/login' || req.originalUrl == '/logout' || req.originalUrl == '/home/index' || req.originalUrl == '/registration' )
	{
		next();
	}
	else{
		  if(!req.session.username){
		  	res.redirect('/login');
		  		return;
		  }
		  next();

		}
});

// ROUTES
app.use('/login', login);
app.use('/logout', logout);
app.use('/registration', reg);
app.use('/home/index', home_index);
app.use('/home', home);
app.use('/home/ad/post', ad_post);

// SERVER START
app.listen(port, function(){
	console.log('Server started successfully ...');
});