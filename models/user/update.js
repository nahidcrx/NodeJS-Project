var db = require('./../db');
module.exports = {
delete: function(adid, callback){
		var sql = "Delete from adtable where adid=?";
		db.executeQuery(sql, [adid], function(result){
			callback(result);
		});
	},

	insert: function(reg, callback){
		//console.log(reg);
		var sql = "INSERT INTO adtable VALUES (null, ?, ?, ?, ?, ?, ?, ?, ?)";
		db.executeQuery(sql, [reg.regid, reg.pn, reg.pc, reg.qn, reg.ppu, reg.dc,reg.ph, reg.dv], function(result){
			callback(result);
			//console.log(result);
		});
	}

};