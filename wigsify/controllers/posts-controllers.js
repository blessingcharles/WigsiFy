const {validationResult} = require('express-validator');
const httpError = require('../Models/http-error')

const execSql = require('../db/execSql');
const db_connect = require('../db/dbObj');
const errorHandler = (msg,code)=>{

    let error = new Error(msg);
    error.code = code ;
    return error

}
// [ /api/posts ]

//handling get request
const getpostsById =async (req,res,next)=>{
    let posts ;
    let postsId = req.params.pid ;

    let sql = `select * from posts where postid=${postsId}`;

    execSql(next,sql,(next,error,results)=>{

        if(error ) res.status(500).json({error:"something went wrong"})
        else if(!results) res.status(404).json({message:"posts not found"})
        else{
            res.status(200).json(results)
        }
    })
   

}

const getpostsByCreatorId =async (req,res,next)=>{

    let userId = req.params.uid ;
  
    //returning the response
    let sql = `select * from posts where userid=${userId}`;
    
    db.query(sql,(error,results)=>{

        if(error ) res.status(500).json({error:"something went wrong"})
        else if(!results) res.status(404).json({message:"posts not found"})
        else{
            res.status(200).json(results)
        }
    })

}

// handling post request

// [ Creating posts ]
const createposts = async (req,res,next)=>{

    const {name,description} = req.body;

    //validating the request
    const error = validationResult(req);
    if(!error.isEmpty()){
        return next(errorHandler('enter valid data',404))
    }
    try{
        // checking if creator exists
       // console.log(req.userData.email)
        let sql = `select * from users where email="${req.userData.email}"` ;
        execSql(next,sql,(next,error,results)=>{

            if(error) res.status(400).json({error:"something went wrong"});

            else if(!results){
                const error = new httpError('creator id is wrong',400);
               console.log("hiiii")
               res.status(400).json(error) ;
            }
            else{
                //getting posts data
                const userid = results.id ;
                const imgpath = `http://localhost:3000/${req.file.path}`
                sql = `insert into posts(name,description,imgpath,userid) values("${name}","${description}","${imgpath}","${userid}")`
                
                //inserting posts data into db 

                execSql(next,sql,(next,error,results)=>{
                    if(error) next(error) ;
                })

                res.status(201);
                res.json({posts:name});
                
         }
        })

       
    }
    catch(error){
       return next(error) ;
    }
}

const updateposts =async (req,res,next)=>{
    const {name,description} = req.body;
    const postsId = req.params.pid;

    //validating request
    const error = validationResult(req);
    if(!error.isEmpty()){
        return next(errorHandler('enter valid data',404))

    }
    let sql = `select * from posts where postid="${postsId}" and userid="${req.userData.id}"`;

    execSql(next,sql,(next,error,results)=>{
        if(error) next(error);
        if(results){
            console.log(results);
            sql = `update posts set name= "${name}",description="${description}" where postid="${postsId}" `
            execSql(next,sql,(next,error,results)=>{
                if(results) res.status(201).json({message:"posts updated"});
                else       res.status(400).json({error:"posts updated failed"});
            });

            
        }
        else{

            res.status(401).json({message:"you cant update this posts"})
        }

        
    });

    

}

const deleteposts = async (req,res,next)=>{

    const postsId = req.params.pid;

    let sql = `select * from posts where postid="${postsId}" and userid="${req.userData.id}"`;

    execSql(next,sql,(next,error,results)=>{
        if(error) res.status(401).json({message:"you cant delete this posts"});
        else if(results){
            console.log("hi      ",results);

            sql = `delete from posts where postid="${postsId}" `
            execSql(next,sql,(next,error,results)=>{
                console.log("hiii",results,"hii");
                // is sql executes correctly it returns 0
                if(results == 0) 
                    {
                        res.status(201).json({message:"posts ---- deleted"});
                    }
                else{
                     res.status(400).json({error:"posts deletion failed"});
                }
            });

        }
        else{

            res.status(401).json({message:"you cant delete this posts"})
        }

        
    });

}

module.exports = {
    getpostsByCreatorId,
    getpostsById,
    createposts,
    updateposts,
    deleteposts
}