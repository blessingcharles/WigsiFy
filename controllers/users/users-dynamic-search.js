

//dynamic search user  /api/users/search?q=[]

const dynamicSearchUser = (req,res,next)=>{

    const query = req.query.q ;

    if(query){
        //using regex to match all username for given query
        let sql = `select name,id,email,FavLang,About,profession,mobile,profile_pic_path from users where name REGEXP "^${query}.*"`;

        db.query(sql,(error,results)=>{
            
            if(error)   res.status(500).json({error:"something went wrong"});
            else{
                res.status(200).json(results)
            }
        })
    }
    else{
        res.status(200).json([])
    }


}

module.exports = dynamicSearchUser ;