var first = require('../blocks/first/first.js');
var second = require('../blocks/second/second.js');
var third = require('../blocks/third/third.coffee');
var fourth = require('../blocks/fourth/fourth.js');

first();
second();
third();
fourth();

var AppView = require('./app-view');
var appView = new AppView();
