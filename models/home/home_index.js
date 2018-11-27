var db = require('./../db');
module.exports = {
	getAll: function(callback){
		var sql = "SELECT * FROM adtable";
		db.executeQuery(sql, null, function(result){
			callback(result);
		});
	},
	get: function(id, callback){
		var sql = "SELECT * FROM adtable WHERE adid=?";
		db.executeQuery(sql, [id], function(result){
			callback(result[0]);
		});
	}

};