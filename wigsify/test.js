const getUsers = (req,res)=>{
    console.log( "hhh")
    sql = "select name from users";
    db.query(sql,(err,results)=>{
        if(err) throw err ;
        res.send(results) ;
    })
}

module.exports = getUsers ;
