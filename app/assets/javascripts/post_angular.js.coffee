angular.module('post', ['ngAnimate'])

angular.module('post')
  .controller "PostCtrl", ["$scope", "$http", ($scope, $http) ->
    $scope.add = () ->
      
      
      $http.get("more/#{$scope.post_id}").success((data) ->
        console.log($scope.post_id, "POST_ID")
        if $scope.post_id is  $scope.init_id
          $scope.posts = data.post
          console.log($scope.posts)
          
          
        else
          Array::push.apply $scope.posts, data.post
          
        $scope.post_id = $scope.posts[$scope.posts.length - 1 ].id
        console.log($scope.post_id, "POST_ID AFTER"))
    #no Infinity, because in rails query inf dont translate
    #$scope.post_id =  2000000
  
    
    $scope.init_id = angular.element('#init-data').data('init')
    $scope.post_id = $scope.init_id
    
    console.log("FFADAD", $scope.init_id)
  
]

  .controller 'PaintCtrl', ['$scope', '$http', ($scope, $http) ->
    # mode 
    # 1 for type
    # 2 for paint 
    $scope.add = (mode, elem_id) ->
      $http.get("/more_type/#{mode}/#{elem_id}/#{$scope.product_id}").success((data) ->
        console.log($scope.product_id, "PRODUCT_ID")
        if $scope.product_id is  $scope.init_id
          $scope.products = data.product
          console.log($scope.products)
          
          
        else
          Array::push.apply $scope.products, data.product
          
        $scope.product_id = $scope.products[$scope.products.length - 1 ].id
        console.log($scope.product_id, "PRODUCT_ID AFTER"))
    #no Infinity, because in rails query inf dont translate
    #$scope.product_id =  2000000
  
    
    $scope.init_id = angular.element('#init-data').data('init')
    $scope.product_id = $scope.init_id
    
    console.log("FFADAD", $scope.init_id)
      
      
    ]
