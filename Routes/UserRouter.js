const express = require('express');
const {check} = require('express-validator')
const { userSignUp, 
    userLogIn ,
    getUsers,
    getUserInfo } = require('../controllers/users/users-controllers.js');

const {userProfilePicUpload , dummy ,userProfileUpdate}= require('../controllers/users/users-profile-controllers');

const verifyJWT = require('../middlewares/verify-jwt')
const ProfileUploader = require('../middlewares/ProfileUploader');

const UserRoutes = express.Router()

// [ HANDLES ======> /api/users ]

UserRoutes.get('/',getUsers)
UserRoutes.get('/about/:userid',getUserInfo)

UserRoutes.post('/signup',
    [
    check('name').not().isEmpty(),
    check('password').isLength({min:5}),
    check('email').isEmail()
],userSignUp)

UserRoutes.post('/login',[
    check('password').isLength({min:5}),
    check('email').isEmail()
],userLogIn)

//need jwt token to access the below routes
UserRoutes.use(verifyJWT);

// user profile update
UserRoutes.patch('/profile',[
    check('name').not().isEmpty(),
    check('about').not().isEmpty(),
    check('favlang').not().isEmpty()
],userProfileUpdate);


//uploading profile pic
UserRoutes.post('/profile/profilepic',
                ProfileUploader.single('profilepic'),
                userProfilePicUpload
                )


module.exports = UserRoutes ;