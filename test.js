var myApp = angular.module("myModule", []);
var myController = function ($scope)
     {
          var Employee = [
          {
            FirstName: "Raj",LastName: "Parihar",Gender: "Male",Address: "Pune",
          },
          {
               FirstName: "Shiva",LastName: "Parihar",Gender: "Male",Address: "Pune",
          },
          {
               FirstName: "Mili",LastName: "Zen",Gender: "Female",Address: "US",
          },
          {
               FirstName: "Divya",LastName: "Singh",Gender: "Female",Address: "Nagpur",
          },
          {
               FirstName: "Digvijay",LastName: "Chauhan",Gender: "Male",Address: "Pune",
          }];
     $scope.Emp = Employee;
     };
myApp.controller("myCont", myController);