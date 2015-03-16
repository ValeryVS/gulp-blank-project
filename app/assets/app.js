var first = require('../blocks/first/first.js');
var second = require('../blocks/second/second.js');
var third = require('../blocks/third/third.coffee');

first();
second();
third();

var AppView = require('./app-view');
var appView = new AppView();
