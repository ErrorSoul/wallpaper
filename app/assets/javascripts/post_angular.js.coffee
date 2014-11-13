angular.module('post', ['ngAnimate'])

angular.module('post')
  .controller "PostCtrl", ["$scope", "$http", ($scope, $http) ->
    $scope.add = () ->
      
      $http.get("more/#{$scope.post_id}").success((data) ->
        if $scope.post_id is  2000000
          $scope.posts = data.post
          $scope.post_id = $scope.posts[5].id
          
        else
          Array::push.apply $scope.posts, data.post
          
        $scope.post_id -= 6)
          
    #no Infinity, because in rails query inf dont translate
    $scope.post_id =  2000000
]
