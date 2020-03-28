var express = require('express');
var consign = require('consign');
var bodyParse = require("body-parser");
var expressValidator = require("express-validator");

var app = express();
app.set('view engine','ejs'); //Setando a engine views para o ejs
app.set("views", "./app/views")

app.use(bodyParse.urlencoded({extended: true}));       
app.use(expressValidator());     

app.use(express.static('./app/public'))

consign()
.include("app/routes")
.then("config/banco.js")
.then("app/models")
.then('app/controller')
.into(app);

module.exports = app;



