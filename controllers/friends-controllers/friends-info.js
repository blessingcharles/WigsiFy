

const getFollowersCount = (req,res,next)=>{
    const  uid = req.params.uid ;

    if(uid){

        let sql = `select count(uid) from friends where follow = "${uid}"`;

        db.query(sql,(error,results)=>{
            if(results[0]){

                let total_count = results[0]['count(uid)'] ;
                res.status(200).json({
                    total_count
                })
            }
            else{
                res.status(400).json({error:"something went wrong"});
            }
               
        })

    }
    else{
        res.status(500).json({error:"something went wrong"})
    }

}

const getFollowingCount = (req,res,next)=>{

    const  uid = req.params.uid ;

    if(uid){

        let sql = `select count(follow) from friends where uid = "${uid}"`;

        db.query(sql,(error,results)=>{
            if(results[0]){

                let total_following = results[0]['count(follow)'] ;
                res.status(200).json({
                    total_count
                })
            }
            else{
                res.status(400).json({error:"something went wrong"});
            }

        })

    }
    else{
        res.status(500).json({error:"something went wrong"})
    }

}

const getFollowers = (req,res,next)=>{
    const  uid = req.params.uid ;

    if(uid){

        let sql = `select uid from friends where follow = "${uid}"`;

        db.query(sql,(error,results)=>{

            if (results){
                let followers = results;
                res.status(200).json({
                     followers
                })
            }
            else{
                res.status(400).json({error:"something went wrong"});
            }

               
        })

    }
    else{
        res.status(500).json({error:"something went wrong"})
    }

}

const getFollowing = (req,res,next)=>{

    const  uid = req.params.uid ;

    if(uid){

        let sql = `select follow as uid from friends where uid = "${uid}"`;

        db.query(sql,(error,results)=>{
             if (results){
                console.log(results)
                 let following = results
                res.status(200).json({
                     following
                })
            }
            else{

                res.status(400).json({
                    error:"something went wrong"
                })

            }

        })

    }
    else{
        res.status(500).json({error:"something went wrong"})
    }

}

module.exports = {
    getFollowersCount,
    getFollowingCount,
    getFollowing,
    getFollowers
}