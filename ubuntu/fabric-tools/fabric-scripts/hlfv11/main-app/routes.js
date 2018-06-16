//SPDX-License-Identifier: Apache-2.0

var machine = require('./controller.js');

module.exports = function(app){

  app.get('/get_machine/:id', function(req, res){
    machine.get_machine(req, res);
  });
  app.get('/add_machine/:machine', function(req, res){
    machine.add_machine(req, res);
  });
  app.get('/get_all_machine', function(req, res){
    machine.get_all_machine(req, res);
  });
  app.get('/change_toolwear/:toolwear', function(req, res){
    machine.change_toolwear(req, res);
  });
  app.get('/get_toolwear/:toolwear', function(req, res){
    machine.get_toolwear(req, res);
  });
}
