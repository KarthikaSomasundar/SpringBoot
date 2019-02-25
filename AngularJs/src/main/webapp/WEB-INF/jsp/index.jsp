<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
 <link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/css/bootstrap.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
 <script src="http://code.angularjs.org/1.2.6/angular.js"></script>
    <script src="http://angular-ui.github.io/bootstrap/ui-bootstrap-tpls-0.9.0.js"></script>
     <style>
        body 	{ padding-top:30px; }
    </style>
 <script type="text/javascript">
  var app = angular.module('myapp', []);
  app.controller('myappcontroller', function($scope, $http) {
		 
  $scope.emp = []
  $scope.empform = {
  name : "",
  id : ""
   };

  $scope.processUser = function() 
  {
	  alert("DATA INSERTED");
    $http({
    method : 'POST',
    url : 'add',
    data : angular.toJson($scope.empform),
    headers : {
    'Content-Type' : 'application/json'
    }
    });
  }
 
  });
</script>
<title></title>
<link rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
</head>
<body data-ng-app="myapp" data-ng-controller="myappcontroller">
<h2>Fill Employee Details</h2>
<form name="form" novalidate>
 <div class="table-responsive">
     <table class="table table-bordered" style="width: 600px">
        <tr>
          <td>Name</td>
          <td><input type="text" id="name" data-ng-model="empform.name" required/>
             </tr>
        <tr>
          <td>id</td>
          <td><input type="number" id="id" data-ng-model="empform.id" required/></td>
       </tr>
       <tr>
          <td colspan="2"><input type="submit"
            class="btn btn-primary btn-sm" data-ng-click="processUser()"
            value="submit" /></td>
       </tr>
     </table> 
   </div>
</form>
  
</body>
</html>