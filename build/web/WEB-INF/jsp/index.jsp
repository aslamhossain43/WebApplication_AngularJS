<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!--To load Bootstrap css Library-->

<link href="<c:url value="/styles/css/bootstrap-theme.min.css"/>" rel="stylesheet" type="text/css" >


<link href="<c:url value="/styles/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css" >


<!-- To load JQuery core library-->
<script type="text/javascript" src="<c:url value="/lib/JQuery/jquery-2.1.0.min.js"/>"></script>



<!-- To load Bootstrap core library-->
<script type="text/javascript" src="<c:url value="/lib/Bootstrap/bootstrap.min.js"/>"></script>


<!-- To load angularjs library-->
<script type="text/javascript" src="<c:url value="/lib/angularjs/angular.min.js"/>"></script>

<!-- To load angularjs library-->
<script type="text/javascript" src="<c:url value="/lib/angularjs/angular-animate.min.js"/>"></script>

<!--this div is under angularjs,,,,,ng-model-->
<!--
<div ng-app="">
Name:  <input type="text" ng-model="name">
 <p>{{name}}</p>
 </div>
-->


<!--this div is under angularjs,,,,,,ng-bind-->
<!--   <div ng-app="">
  Name:  <input type="text" ng-model="name">
  <p ng-bind="name"></p>
   </div>
-->
<!--this div is under angularjs,,,,,,ng-bind,,,,in select attribute-->
<!--  <div ng-app="">
      <select ng-model="name">
          <option>Bangladesh</option>
           <option>America</option>
           <option>Chanada</option>
           <option>Australia</option>
          
      </select>
      
 <p ng-bind="name"></p>
  </div>
-->

<!--this div is under angularjs,,,,,,ng-bind,,,,in textarea attribute-->
<!-- <div ng-app="">        
     <textarea ng-model="name" cols="10" rows="5">
      </textarea>
     <p ng-bind="name"></p>
     
 </div>    
-->   


<!--this div is under angularjs,,,,,,ng-init,,,,,this is like variable -->        
<!-- <div ng-app="" ng-init="name='Aslam'">        
 
    <p> my name is {{name}}</p>
    
</div>
 
-->


<!--this div is under angularjs,,,,,,ng-repeat -->        
<!--<div ng-app="" ng-init="person=[{name:'aslam',profession:'student'},
            {name:'salam', profession:'student'},
            {name:'zubair', profession:'student'}]">        

    <ul>
        <li ng-repeat="x in person">{{x.name}}</li>

    </ul>


</div>

-->


<!--

        <script>
    function NameCtrl($scope){
        $scope.firstName='atif';
         $scope.lastName='aslam';
           
    }
</script>
   
<div ng-controller="NameCtrl">

    <div ng-app="">
    
    First Name : <input ng-model="firstName" type="text"></br>
    
    Last Name : <input ng-model="lastName" type="text"></br>
    
    <p>Hello   {{firstName}}   {{lastName}}</p>

    </div>
    </div>
-->


<!--scope values asynchronous,,update dont propagate without .apply()--> 
<!--
<div ng-app="nameApp">  
 <script>
     var nameApp=angular.module('nameApp',[]);
     nameApp.controller('nameCtrl',function($scope){
        $scope.firstName='atif';
      
        $scope.$watch('lastName',function(newValue,oldValue){
           console.log('new value is ' +newValue); 
            
        });
         setTimeout(function(){
             $scope.lastName='aslam';
         
         },1000);
     });
   
</script>
   
<div ng-controller="nameCtrl">

    
 
    First Name : <input ng-model="firstName" type="text"></br>
    
    Last Name : <input ng-model="lastName" type="text"></br>
    
    <p>Hello   {{firstName}}   {{lastName}}</p>
    </div>
    </div>

//-->

<!--
<div ng-app="app">
    
    <div  ng-controller="ctl">
      {{fname+" "+lname}} 
    </div>
   
    
</div>
<script>
    var cont=angular.module('app',[]);
    cont.controller('ctl',function($scope){
        $scope.fname='atif';
        $scope.lname='aslam';
        
    });
</script>
//-->

<!--module and conrtoller in js file and filter-->
<!--
<div ng-app="myFirstApp" ng-controller="myFirstCtrl">
    <h2>{{fname+" "+lname|lowercase}}</h2>
</div>
<script src="<c:url value="/js/myFirstApp.js"/>"></script>
<script src="<c:url value="/js/myFirstCtrl.js"/>"></script>
-->
<!--
<div ng-app="" ng-init="person=[{name:'Bilgates'},{name:'Zukarbarg'},{name:'Aslam'}]">
    <ul>
        <li ng-repeat="x in person|orderBy:'name'">{{x.name}}</li>
    </ul>
</div>

-->

<!--scope values asynchronous,,update dont propagate with .apply()--> 
<!--
<div ng-app="nameApp">  
 <script>
     var nameApp=angular.module('nameApp',[]);
     nameApp.controller('nameCtrl',function($scope){
        $scope.firstName='atif';
      
        $scope.$watch('lastName',function(newValue,oldValue){
           console.log('new value is ' +newValue); 
            
        });
         setTimeout(function(){
             $scope.lastName='aslam';
             $scope.apply();
         },3000);
     });
   
</script>
   
<div ng-controller="nameCtrl">

    
 
    First Name : <input ng-model="firstName" type="text"></br>
    
    Last Name : <input ng-model="lastName" type="text"></br>
    
    <p>Hello   {{firstName}}   {{lastName}}</p>
    </div>
    </div>
-->


<!--using forms and ng-submit,,,,,--> 
<!--
<div ng-app="nameApp">  
 <script>
     var nameApp=angular.module('nameApp',[]);
     nameApp.controller('nameCtrl',function($scope){
        $scope.names=['Aslam','Hasan','Tarikul'];
      
        $scope.addName=function(){
      $scope.names.push($scope.enteredName);      
    };
            
        });
       
   
</script>
   
<div ng-controller="nameCtrl">
    <ul>
        
        <li ng-repeat="name in names">{{name}}</li>
    </ul>
    <form ng-submit="addName()">
        <input type="text" ng-model="enteredName">
        <input type="submit" value="add">
    </form>
 
    </div>
    </div>

-->


<!--using forms and ng-submit and remove,,,,,--> 
<!--
<div ng-app="nameApp">  
 <script>
     var nameApp=angular.module('nameApp',[]);
     nameApp.controller('nameCtrl',function($scope){
        $scope.names=['Aslam','Hasan','Tarikul'];
      
        $scope.addName=function(){
      $scope.names.push($scope.enteredName);      
    };
        $scope.removeName=function(name){
            var i=$scope.names.indexOf(name);
            $scope.names.splice(i,1);
            
        } ;
        
       
        });
       
   
</script>
   
<div ng-controller="nameCtrl">
    <ul>
        
        <li ng-repeat="name in names">{{name}}
            <a href="" ng-click="removeName(name)">remove</a>
        </li>
    </ul>
    <form ng-submit="addName()">
        <input type="text" ng-model="enteredName">
        <input type="submit" value="add">
    </form>
 
    </div>
    </div>
-->


<!--,,,,,,array,,,,,--> 
<!--
<div ng-app="nameApp">  
    <script>
        var nameApp = angular.module('nameApp', []);
        nameApp.controller('nameCtrl', function ($scope) {
            $scope.countries = [
                {"name": "china", "population": 13273674},
                {"name": "india", "population": 1322323},
                {"name": "United States of America", "population": 137874},
            ];

        });


    </script>

    <div ng-controller="nameCtrl">
        <table border="1">
            <tr>
                <th>Country</th>
                <th>Population</th>
                
            </tr>
            <tr ng-repeat="country in countries">
                <td>{{country.name}}</td>
                <td>{{country.population}}</td>
                
                
            </tr>
            
            
        </table>

    </div>
</div>
-->
<!--Searching system-->
<!--
<div ng-app="currencyApp">
    <div ng-controller="ctrl">
        search : <input type="text" ng-model="test"><br/><br/>
        <ul>
            <li ng-repeat="x in person|filter:test">Name : {{x.name+" , Skill : "+x.skill}}</li>
        </ul>
        
        
    </div>
    
    
</div>
<script>
    var app=angular.module("currencyApp",[]);
    app.controller("ctrl",function($scope){
        $scope.person=[{name:"Aslam",skill:"java"},
        {name:"Bilgates",skill:"microsoft"},
    {name:"zukarbarg",skill:"facebook"},
{name:"neymer",skill:"football"}];
        
    });
    
    
</script>



<!--,,,,,,array with JSon and searching orderBy,,,,,--> 
<!--
<div ng-app="nameApp">  
    <script>
        var nameApp = angular.module('nameApp', []);
        nameApp.controller('nameCtrl',function ($scope,$http) {
$http.get('<c:url value="/JSons/JSon/countries.json"/>').success(function(data){
                   $scope.countries=data;
           });
        });


    </script>

    <div ng-controller="nameCtrl">
        Search : <input ng-model="query" type="text">
        <table>
            <tr>
                <th>Country</th>
                <th>Population</th>
                
            </tr>
            <tr ng-repeat="country in countries | filter:query | orderBy:'population'">
                <td>{{country.name}}</td>
                <td>{{country.population}}</td>
                
                
            </tr>
            
            
        </table>

    </div>
</div>
-->

<!--,,,,,,array with JSon and searching orderBy sortedField,,,,,--> 
<!--
<div ng-app="nameApp">  
    <script>
        var nameApp = angular.module('nameApp', []);
        nameApp.controller('nameCtrl',function ($scope,$http) {
$http.get('<c:url value="/JSons/JSon/countries.json"/>').success(function(data){
                   $scope.countries=data;
           });
           $scope.sortedField='population';
        });


    </script>

    <div ng-controller="nameCtrl">
        Search : <input ng-model="query" type="text">
        <table>

            <tr>
                <th><a href="" ng-click="sortedField='name'">Country</a></th>
                 <th><a href="" ng-click="sortedField='population'">Population</a></th>
                
            </tr>
            <tr ng-repeat="country in countries | filter:query | orderBy:sortedField">
                <td>{{country.name}}</td>
                <td>{{country.population}}</td>
                
                
            </tr>
            
            
        </table>

    </div>
</div>

-->


<!--,,,,,,array with JSon and searching orderBy sortedField and reverse,,,,,--> 
<!--
<div ng-app="nameApp">  
    <script>
        var nameApp = angular.module('nameApp', []);
        nameApp.controller('nameCtrl',function ($scope,$http) {
$http.get('<c:url value="/JSons/JSon/countries.json"/>').success(function(data){
                   $scope.countries=data;
           });
           $scope.sortedField='population';
           $scope.reverse=true;
        });


    </script>

    <div ng-controller="nameCtrl">
        Search : <input ng-model="query" type="text">
        <table>

            <tr>
                <th><a href="" ng-click="sortedField='name';reverse=!reverse">Country</a></th>
                 <th><a href="" ng-click="sortedField='population';reverse=!reverse">Population</a></th>
                
            </tr>
            <tr ng-repeat="country in countries | filter:query | orderBy:sortedField:reverse">
                <td>{{country.name}}</td>
                <td>{{country.population}}</td>
                
                
            </tr>
            
            
        </table>

    </div>
</div>


-->



<!--,,,,,,array with JSon and searching orderBy sortedField and url of flags,,,,,--> 
<!--
<div ng-app="nameApp">  
    <script>
        var nameApp = angular.module('nameApp', []);
        nameApp.controller('nameCtrl',function ($scope,$http) {
            $http.get('<c:url value="/JSons/JSon/country.json"/>').success(function(data){
                   $scope.country=data;
           });
          
        });


    </script>

    <div ng-controller="nameCtrl">
      
        <table>

            <tr>
                <th>Country</th>
                 <th>Population</th>
                 <th>Flags</th>
                
            </tr>
            <tr ng-repeat="c in country">
                <td>{{c.name}}</td>
                <td>{{c.population}}</td>
             <td><img ng-src="{{c.flagurl}}" width="100" height="100"></td>
            
                
            </tr>
            
            
        </table>

    </div>
</div>
-->

<!--Practice -->

<!--
<div ng-app="myApp" ng-controller="myCtrl">
    <ul>
        <li ng-repeat="n in names">{{n}}</li>
        
    </ul>
    <script>
        var app=angular.module('myApp',[]);
        app.controller('myCtrl',function($scope){
           $scope.names=["aslam","asha","liza"]; 
        });
        
        </script>
    
</div>
-->
<!--Angular js service-->

<!--
<div ng-app="urlApp">
    
    <div ng-controller="urlCtrl">
        <h3>{{url}}</h3>
    </div>
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.controller("urlCtrl",function($scope,$location){
        $scope.url=$location.absUrl();
    });
</script>

-->

<!--Service $http-->

<!--
<div ng-app="urlApp">
    
    <div ng-controller="urlCtrl">
        <h3>{{myPage}}</h3>
    </div>
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.controller("urlCtrl",function($scope,$http){
        $http.get("pages/for_http.jsp").then(function(response){
           $scope.myPage=response.data; 
        });
    });
</script>
-->


<!--Service $timeout-->
<!--
<div ng-app="urlApp">
    
    <div ng-controller="urlCtrl">
        <h3>{{msg}}</h3>
    </div>
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.controller("urlCtrl",function($scope,$timeout){
       $scope.msg="Hello world  !!!";
       $timeout(function(){
          $scope.msg="Hello,,,,,, how are you??"; 
       },2000);
    });
</script>
-->

<!--Service $interval,,,this showes real time-->
<!--
<div ng-app="urlApp">
    
    <div ng-controller="urlCtrl">
        <h3>{{time}}</h3>
    </div>
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.controller("urlCtrl",function($scope,$interval){
       $scope.time=new Date().toLocaleTimeString();
       $interval(function(){
           $scope.time=new Date().toLocaleTimeString();
       },1000);
    });
</script>

-->

<!--Service making custom service-->
<!--
<div ng-app="urlApp">
    
    <div ng-controller="urlCtrl">
        <h3>{{hexa}}</h3>
    </div>
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.service("hexafy",function(){
       this.myFunc=function(x){
           return x.toString(16);
       } 
    });
    
    uApp.controller("urlCtrl",function($scope,hexafy){
   $scope.hexa=hexafy.myFunc(255);
    });
</script>
-->


<!--Service,,, making custom service inside a filter-->
<!--
<div ng-app="urlApp">
    
   
        <h3>{{255|myFormat}}</h3>
    
    
</div>
<script>
    var uApp=angular.module("urlApp",[]);
    uApp.service("hexafy",function(){
       this.myFunc=function(x){
           return x.toString(16);
       } 
    });
    uApp.filter("myFormat",["hexafy",function(hexafy){
            return function(x){
                return hexafy.myFunc(x);
            };
    }]);
   
</script>
-->


<!--Angularjs,,,,, AJAX,,,,,-->
<!--
<div ng-app="app">
    <div ng-controller="ctrl">
        
        <h3>{{msg}}</h3>
    </div>
   
        
    
    
</div>
<script>
    var app=angular.module("app",[]);
    app.controller("ctrl",function($scope,$http){
        $http({
           method:"GET",
           url:"pages/for_http.jsp"
                
        }).then(function mySuccess(resp){
       $scope.msg=resp.data;       
      },function myError(resp){
          $scope.msg=resp.statusText;

      });
    });
  
</script>
-->

<!--Form validation-->
<!--
<div ng-app="">
    <form name="myForm">
        <input name="myInput" ng-model="myInput" type="email">
        
        <input name="myInput" ng-model="myInput" required>
   
    <span ng-show="myForm.myInput.$touched && myForm.myInput.$invalid">The input is required</span>
    </form>
</div>
-->


<!--Form validation-->
<!--
    <h2>Form validation example</h2>
    <form ng-app="app" ng-controller="ctrl" name="myForm" novalidate>
        
        <p>Name : <input type="text" name="name" ng-model="name" required>
        <span style="color: red" ng-show="myForm.name.$dirty && myForm.name.$invalid">User name is required between 2-30 characters</span>
        </p>

        <p>Email : <input type="email" name="email" ng-model="email" required>
        <span style="color: red" ng-show="myForm.email.$dirty && myForm.email.$invalid">Email is required</span>
        </p>
        <p><input type="submit" ng-disabled="myForm.name.$dirty && myForm.name.$invalid || myForm.email.$dirty && myForm.email.$invalid">
        </p>


        
    </form>
    <script>
        var app=angular.module("app",[]);
        app.controller("ctrl",function($scope){
            $scope.name="atif aslam";
            $scope.email="atif.hstu143@gmail.com";
            
        });
    </script>
-->

<!--animation-->
<!--
<style>
    #myDiv{
        width: 200px;
        height: 200px;
        background: blue;
        position: relative;
        transition: all linear 0.2s;
        
    }
</style>
<div ng-app="">
    <h3>To hide bg check the box : <input type="checkbox" ng-model="myCheck"></h3>
    <div id="myDiv" ng-hide="myCheck">
        
        
    </div>
    
    
    
</div>
-->

<!--Page routing-->

<!--adding items-->

<!--
<div ng-app="app">
    <div ng-controller="ctrl">
        <ul>
            <li ng-repeat="x in products">{{x}}</li>
        </ul>
        <form>
        <input ng-model="addMe">
        <button ng-click="addItem()">Add</button>
        </form>
       
        
    </div>
    
    
</div>

<script>
    var app=angular.module("app",[]);
    app.controller("ctrl",function($scope){
        $scope.products=["Apple","Orange","Bana"];
        $scope.addItem=function(){
            $scope.products.push($scope.addMe);
        }
    });
    
    
    
    
</script>

-->















