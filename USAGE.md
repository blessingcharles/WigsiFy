
### ######################################## users #############################3
/api/users/signup   [post]

    {
        "name": "thomas",
        "password":"thomas",
        "email":"thomas@gmail.com"

    }

    gives

    {
        "email": "thomas@gmail.com",
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRob21hc0BnbWFpbC5jb20iLCJpYXQiOjE2MjEwOTMwODcsImV4cCI6MTYyMTA5NjY4N30.7HqPg_Vr_Fw-ykCI_f_TLXefMZdTcjxnvHTPRIWdEm8",
        "id":27
    }

/api/users/login [post]

    {
     "password":"thomas",
     "email":"thomas@gmail.com"
    }

    gives

    {
        "email": "thomas@gmail.com",
        "userId": 27,
        "token": "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJlbWFpbCI6InRob21hc0BnbWFpbC5jb20iLCJpZCI6MjcsImlhdCI6MTYyMTA5MzI0OSwiZXhwIjoxNjIxMDk2ODQ5fQ.DJooOVszMI296g9PvdSLNRVLtiiZnSzVdEOPGlbEto0"
    }
/api/users/profile  [patch]

{
     "name": "thomas",
     "About":"Im a cat",
     "FavLang": "python javascript",
    "mobile": "983483333342",
    "profession": "full stack"
}

gives

{
    "id": 27
}

/api/users/profile   [current user]

{
    "id": 27,
    "name": "thomas",
    "About": "Im a cat",
    "FavLang": "python javascript",
    "email": "thomas@gmail.com",
    "mobile": "983483333342",
    "profession": "full stack",
    "profile_pic_path": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
    "followers": 0,
    "following": 0,
    "no_of_posts": 1
}

/api/users/profile/27  [by user id]

{
    "id": 27,
    "name": "thomas",
    "About": "Im a cat",
    "FavLang": "python javascript",
    "email": "thomas@gmail.com",
    "mobile": "983483333342",
    "profession": "full stack",
    "profile_pic_path": "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__340.jpg",
    "followers": 0,
    "following": 0,
    "no_of_posts": 1
}


## ############################# posts
/api/posts  [post]

    {
        "name": "post2",
        "imgpath": "http://localhost:3000/uploads/images/84188917.png",
        "description": "this is a post 2"
    }

gives

    {
        "name": "post2",
        "userid": 27,
        "imgpath": "http://localhost:3000/uploads/images/84188917.png",
        "description": "this is a post 2"
    }

/api/posts/user/27 [get]

## gives

[
    {
        "postid": 21,
        "name": "post1",
        "description": "this is a post",
        "imgpath": "http://localhost:3000/uploads/images/64012989.png",
        "userid": 27
    },
    {
        "postid": 22,
        "name": "post2",
        "description": "this is a post 2",
        "imgpath": "http://localhost:3000/uploads/images/84188917.png",
        "userid": 27
    }
]

## /api/posts/21 [get]

##  gives
[
    {
        "postid": 21,
        "name": "post1",
        "description": "this is a post",
        "imgpath": "http://localhost:3000/uploads/images/64012989.png",
        "userid": 27
    }
]


## /api/posts/21  [patch]

{
     "name": "thomas",
     "description":"patching the post"

}

gives

{
    "message": "posts updated"
}

## /api/posts/21  [delete]

{
    "message": "posts ---- deleted"
}


