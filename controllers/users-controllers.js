const {validationResult} = require('express-validator');
const bcrypt = require('bcryptjs');
const jwt = require('jsonwebtoken');
const dotenv = require('dotenv');

const httpError = require('../Models/http-error');
const  execSql = require('../db/execSql');
dotenv.config();

//getusersname
//[ /api/users/ ]

// return all users name 
const getUsers =async (req,res,next)=>{


    sql = "select name from users";
    execSql(next,sql,(next,err,results)=>{
        if(err) next(err) ;
        res.send(results) ;
    })

}

// return user info by userid [ /about/:userid ]
const getUserInfo =async (req,res,next)=>{
    let userid = req.params.userid ;
    sql = `select id,name,About,FavLang,email from users where id = "${userid}"`

    execSql(next,sql,(next,error,results)=>{
        console.log(results);
        if(error) next(error) ;

        //if user doesnot exists 
        if(!results) res.status(404).json({error:"user not found"});

        // if user found
        res.status(200).json(results);
    })
}

//handling post request

// [  /api/users/signup  ]
const userSignUp =async (req,res,next)=>{
    const {name,email,password} = req.body;

    //validating user input 
    const error = validationResult(req);
    if(!error.isEmpty()){
        const error = new httpError('enter valid data',422)
        console.log(req.body)      
        return next(error);
    }

    //sql query for testing if email already exists
    let sql = `select id from users where email = "${email}"`;

    execSql(next,sql,(next,error,identifyUserExists)=>{
        if(error) next(error) ;

        if(identifyUserExists){
            let error = new Error('email already exists');
            error.code = 400;
            next(error);
        }
    })

    // hashing the password using bcrypt
    let hashedPassword
    try{
        hashedPassword = await bcrypt.hash(password,12)
    }catch(err){
        let error = new Error('failed to register user');
        error.code = 400
        return next(error)
    }


    //sql insertion for new user
    sql = `insert into users(name,password,email) values ("${name}","${hashedPassword}","${email}")`

    execSql(next,sql,(next,error,results)=>{
        if(error) next(error) ; 

        console.log(results);

    })

    execSql(next,sql,async (next,error,results)=>{

        if(error) next(error) ;
        
        //generating jwt token
        console.log(results.id)
        let token
        try{
            token = jwt.sign({email:email,id:results.id},process.env.JWT_SECRETKEY,{expiresIn:'1h'})
            
            res
            .status(201)
            .json({email:email,token:token});

        }
        catch(err){
            const error = new httpError('try again later',400)
            return next(error)
        }
    })

}

// [  /api/users/login ]
const userLogIn = async (req,res,next)=>{

    const {email , password} = req.body
        //validating user input 
    const error = validationResult(req);
    if(!error.isEmpty()){
        console.log("hiiii")
        const error = new httpError('invalid credentials',401)
        return next(error)
    }
   
  let sql =`select * from users where email="${email}"`
  
  execSql(next,sql,async (next,error,identifyUser)=>{
        if(error) next(error) ;

        //console.log(identifyUser)

        let isPasswordValid = false
        try{
           console.log(identifyUser.password, isPasswordValid);
           isPasswordValid= await bcrypt.compare(password,identifyUser.password)
        }catch(err){
            let error = new Error('failed to login user');
            error.code = 400
            return next(error)
        }
       //decoding the password and comparing

        if(!identifyUser || !isPasswordValid){
            let error = new Error('invalid credentials');
            error.code = 401
            return next(error);
        }
      
         //generating jwt token
         let token
         try{
             token = jwt.sign({email:email,id:identifyUser.id},process.env.JWT_SECRETKEY,{expiresIn:'1h'})
         }
         catch(err){
             const error = new httpError('try again later',400)
             return next(error)
         }
      
           
          res
          .status(200)
          .json({email:email,userId:identifyUser.id,token:token});
      
  })
 
}

module.exports = {
    getUsers,
    userSignUp,
    userLogIn,
    getUserInfo
}
