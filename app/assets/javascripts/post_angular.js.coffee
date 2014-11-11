angular.module('post', ['ngAnimate'])

angular.module('post')
  .controller "PostCtrl", ["$scope", "$http", ($scope, $http) ->
    $scope.add = () ->
      
      $http.get("more/#{$scope.post_id}").success((data) ->
        if $scope.post_id is  6
          $scope.posts = data.post
          
        else
          Array::push.apply $scope.posts, data.post
          
        $scope.post_id += 6)
          

    $scope.post_id = 6
]
