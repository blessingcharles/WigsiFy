# WigsiFy
project wigsify backend [ nodejs + mysql ]
/api
    ----> /users
                /               (get all user names)
                /signup [post]  (json {name,password,email})   return {email,token,usrId}
                /login  [post]   (json {name, email})          return{email,token}
                /about/:userid  (get user info by userid)      
                
                
    -----> /posts
                /:pid
                /user/:uid
                /:pid [delete]
                /:pid [patch ]
            

    -----> /code
                /user/:uid
                /:code_id
                /search&q=[topic]

    
    ------> /hobby
                /interests/:userid
                /FavSongs/:userid
                /FavMovies/:uid
                /status/:uid

    ------> /chats
                /:userid
                
/uploads/images


