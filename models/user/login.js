var db = require('./../db');
module.exports = {
	validateUser: function(username, password, callback){
		var sql = "SELECT * FROM registrationtable WHERE User_Name=? AND Pass=?";
		var sqlParam = [username, password];
		db.executeQuery(sql, sqlParam, function(result){
			if(!result)
			{
				callback(false);
			}
			else
			{
				callback(result.length != 0);
			}
		});
	}
};
