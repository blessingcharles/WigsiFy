const express = require('express');
const mysql = require('mysql');
const dotenv = require('dotenv');
const bodyparser =require('body-parser');
const path = require('path');

//USER MODULES
const getUsers = require('./test');
const db_connect = require('./db/dbObj');
const UserRoutes = require('./Routes/UserRouter');
const PostsRoutes = require('./Routes/PostsRouter');

// config file [.env ]
dotenv.config();
const app = express();

// MIDDLEWARES FOR CORS AND REQ BODY PARSING
app.use(bodyparser.json())
app.use((req,res,next)=>{

    res.setHeader('Access-Control-Allow-Origin','*');
    res.setHeader('Access-Control-Allow-Headers',  
                                    'Accept,Content-Type,X-Requested-With,Origin,Authorization');
    res.setHeader('Access-Control-Allow-Methods','*');

    next()
})

//REST API
app.use('/api/users',UserRoutes);
app.use('/api/posts',PostsRoutes);
app.use('/uploads/images',express.static(path.join('uploads','images')))
-
app.get('/getusers',getUsers)





//error handling
app.use((req,res,next)=>{
    const error = new Error('could not find this route')
    error.code = 400
    next(error)
})

app.use((error,req,res,next)=>{
    if(req.file){
        fs.unlink(req.file.path,error =>{
            console.log(error)
        })
    }
    if(res.headerSent){
        return next(error)
    }
    res.status( error.code || 500 );
    res.json({message:error.message || 'something went wrong'})
})



// connecting to the database and then starting the server
global.db = mysql.createConnection(db_connect);
db.connect(function(err) {

    if (err) throw err;
    // starting the server
  app.listen(process.env.PORT || 3000,()=>{

    console.log(`Server Started ==> ${process.env.PORT || 3000}`); 

    })

    console.log("DB Connected!");

});
