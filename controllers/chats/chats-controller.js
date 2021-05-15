const {validationResult} = require('express-validator')

const getChats = (req,res,next)=>{

       //validating the request
       const error = validationResult(req);
       const {fid} = req.body;
   
       if(!error.isEmpty()){
           // friend id is not given
           return res.status(400).json({error:"friend id not given"})
       }
       else{
        let myid = req.userData.id ;

        let sql = `select chats_table_name from `
         sql = `select * from ( select * from TvRXy9s9uT5ZJIiFK9AnnQtqE3PIIB4K order by timestamp desc limit 5)var2 order by timestamp asc` ;
       }

}

module.exports = getChats