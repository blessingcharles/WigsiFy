const express = require('express');
const {check} = require('express-validator')
const { userSignUp, 
    userLogIn ,
    getUsers,
    getUserInfo } = require('../controllers/users-controllers.js');

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

module.exports = UserRoutes ;