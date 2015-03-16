var $ = require('jquery');

module.exports = function() {
  console.log('First');
  console.log($('.first').text());
};
