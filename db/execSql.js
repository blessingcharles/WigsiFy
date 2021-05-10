
const execSql = (next,sql,callback)=>{

    db.query(sql,(error,results)=>{

        if(error) callback(next,error,null)
        else{
          let rows ;

          //converting the rowdatapackts into propr usable objects

          Object.keys(results).forEach(function(key) {
              rows = results[key];
            });
          //console.log(results)
          callback(next,null,rows);
          //callback(null,results)
        }
    })

  }

module.exports = execSql ;
