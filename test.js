const getUsers = (req,res)=>{
    console.log( "hhh")
    sql = "select name from users";
    db.query(sql,(err,results)=>{
        if(err) throw err ;
        res.send(results) ;
    })
}

module.exports = getUsers ;

// useEffect(() => {
    
//         async function getUserProfile() {

//         const data = await fetch(`http://localhost:3000/api/friends/following/${userid}`).then(response => response.json());
        
//         let Total_info = [];

//         const dataId = data.map(data => data.id),
//         ReqOpts = { method: 'POST'};


//         Total_info = await Promise.all(dataId.map(async (id) => {

//              const userInfo = await fetch(`http://localhost:3000/api/users/profile/${id}`, ReqOpts).then(response => response.json());
//              return userInfo ;
//         })

//         )
//     }
//     getUserProfile();

//     return () => {
//       //  cleanup
//     }

// }, [input])