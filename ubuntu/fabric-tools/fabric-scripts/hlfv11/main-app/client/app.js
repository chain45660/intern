// SPDX-License-Identifier: Apache-2.0

'use strict';

var app = angular.module('application', []);

// Angular Controller
app.controller('appController', function($scope, appFactory){

	$("#success_toolwear").hide();
	$("#success_create").hide();
	$("#error_toolwear").hide();
	$("#error_query").hide();

	$scope.queryAllMachine = function(){

		appFactory.queryAllMachine(function(data){
			var array = [];
			for (var i = 0; i < data.length; i++){
				parseInt(data[i].Key);
				data[i].Record.Key = parseInt(data[i].Key);
				array.push(data[i].Record);
			}
			array.sort(function(a, b) {
			    return parseFloat(a.Key) - parseFloat(b.Key);
			});
			$scope.all_machine = array;
		});
	}

	$scope.queryMachine = function(){

		var machine_id = $scope.machine_id;

		appFactory.queryMachine(machine_id, function(data){
			$scope.query_machine = data;

			if ($scope.query_machine == "Could not locate machine"){
				console.log(id)
				$("#error_query").show();
			} else{
				$("#error_query").hide();
			}
		});
	}

	$scope.recordMachine = function(){

		appFactory.recordMachine($scope.machine, function(data){
			$scope.create_machine = data;
			$("#success_create").show();
		});
	}

	$scope.changeToolwear = function(){

		appFactory.changeToolwear($scope.toolwear, function(data){
			$scope.change_toolwear = data;
			if ($scope.change_toolwear == "Error: no machine found"){
				$("#error_toolwear").show();
				$("#success_toolwear").hide();
			} else{
				$("#success_toolwear").show();
				$("#error_toolwear").hide();
			}
		});
	}

	$scope.getToolwear = function(){

		appFactory.getToolwear($scope.toolwear, function(data){
			$scope.change_toolwear = data;
			if ($scope.change_toolwear == "Error: no machine found"){
				$("#error_toolwear").show();
				$("#success_toolwear").hide();
			} else{
				$("#success_toolwear").show();
				$("#error_toolwear").hide();
			}
		});
	}

});

// Angular Factory
app.factory('appFactory', function($http){

	var factory = {};

    factory.queryAllMachine = function(callback){

    	$http.get('/get_all_machine/').success(function(output){
			callback(output)
		});
	}

	factory.queryMachine = function(id, callback){
    	$http.get('/get_machine/'+id).success(function(output){
			callback(output)
		});
	}

	factory.recordMachine = function(data, callback){

		var machine = data.id + "-" + data.timestamp + "-" + data.toolwear;

    	$http.get('/add_machine/'+ machine).success(function(output){
			callback(output)
		});
	}

	factory.changeToolwear = function(data, callback){

		var toolwear = data.id + "-" + data.toolwear;

    	$http.get('/change_toolwear/'+ toolwear).success(function(output){
			callback(output)
		});
	}

	factory.getToolwear = function(data, callback){

		var final_toolwear = data.id;

    	$http.get('/get_toolwear/'+ final_toolwear).success(function(output){
			callback(output)
		});
	}

	return factory;
});
