var db = require('./../db');
module.exports = {
insert: function(reg, callback){
		var sql = "INSERT INTO registrationtable VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		db.executeQuery(sql, [reg.fn, reg.ln, reg.un, reg.ps, reg.pn,
		 reg.dv,reg.dr, reg.tp, reg.em, reg.nd, reg.gn, reg.day, reg.mn ,reg.yr ,reg.nl], function(result){
			callback(result);
		});
	}

};