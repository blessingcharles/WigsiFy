const express = require('express');
const {check} = require('express-validator')

const verifyJWT = require('../middlewares/verify-jwt');
const UserRoutes = require('./UserRouter');
const getChats = require('../controllers/chats/chats-controller');

const ChatsRouter = express.Router();


UserRoutes.use(verifyJWT);

/*[userid will be taken from jwt need to post {
    friend id and no of messages
}] */
UserRoutes.post('/',
    [check('fid').not().isEmpty()],
    getChats)


module.exports = ChatsRouter ;