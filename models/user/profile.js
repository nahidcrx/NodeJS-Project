var db = require('./../db');
module.exports = {
	get: function(username, callback){
		var sql = "SELECT * FROM registrationtable WHERE User_Name=?";
		var sqlParam = [username];
		db.executeQuery(sql, sqlParam, function(result){
			
				callback(result[0]);
			
		});


	},

	getAll: function(regID, callback){
		var sql = "SELECT * FROM adtable WHERE regid=?";
		var sqlParam = [regID];
		db.executeQuery(sql, sqlParam, function(result){
			
				callback(result);
			
		});


	},

	getInfo: function(regID, callback){
		var sql = "SELECT * FROM registrationtable WHERE ID=?";
		var sqlParam = [regID];
		db.executeQuery(sql, sqlParam, function(result){
			
				callback(result[0]);
			
		});


	},

	updateInfo: function(regID,fn,ln,un,pa,ph,em, callback){
		var sql = "update registrationtable set First_Name=?,Last_Name=?,User_Name=?,Pass=?,Phone=?,Email=? WHERE ID=?";
		var sqlParam = [fn,ln,un,pa,ph,em,regID];
		db.executeQuery(sql, sqlParam, function(result){
			
				callback(result);
			
		});


	}



};
