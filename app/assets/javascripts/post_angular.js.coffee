angular.module('post', ['ngAnimate'])

angular.module('post')
  .config [
    '$httpProvider'
  
  
  
    ($httpProvider) ->
  
      authToken = $("meta[name=csrf-token]").attr("content")
      $httpProvider.defaults.headers.common["X-CSRF-TOKEN"] = authToken
      
]
   .factory("Helpers", ["$http", ($http) ->
    add_to_cart = (product_id) ->
      line_item = {}
      line_item.product_id = product_id
      line_item.quantity = 1
      
      $http.post("/line_items", line_item: line_item)

    {add_to_cart}
      
  
  ])

   .controller "CartCtrl", ["$scope", "$http", "Helpers", ($scope, $http, Helpers) ->
      $scope.add_to_cart = (product_id) ->
      
        Helpers.add_to_cart(product_id).success((data)->
          back_function = () ->
            $('#current_item').css({'background-color': 'initial'})
          
          
          current_item  = $('#current_item')
          current_item.css({'background-color':'#88ff88'})
            .animate({'background-color': '#FE980F'}, 6000, back_function)
      
          console.log("FSFSDFSDFSDFDSF< DFDSFDSF")).error((data)->
            console.log(data))
  ]

     
  .controller "PostCtrl", ["$scope", "$http", "Helpers", ($scope, $http, Helpers) ->
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

    $scope.add_to_cart = (product_id) ->
      
      Helpers.add_to_cart(product_id).success((data)->
        back_function = () ->
          $('#current_item').css({'background-color': 'initial'})
          
          
        current_item  = $('#current_item')
        current_item.css({'background-color':'#88ff88'})
          .animate({'background-color': '#FE980F'}, 6000, back_function)
      
        console.log("FSFSDFSDFSDFDSF< DFDSFDSF")).error((data)->
          console.log(data))
    #no Infinity, because in rails query inf dont translate
    #$scope.post_id =  2000000
  
    
    $scope.init_id = angular.element('#init-data').data('init')
    $scope.post_id = $scope.init_id
    
    console.log("FFADAD", $scope.init_id)
  
]

  .controller 'PaintCtrl', ['$scope', '$http','Helpers', ($scope, $http, Helpers) ->
    # mode 
    # 1 for type
    # 2 for paint 
    $scope.add = (mode, elem_id) ->
      $http.get("/more_type/#{mode}/#{elem_id}/#{$scope.product_id}").success((data) ->
      
        if $scope.product_id is  $scope.init_id
          $scope.products = data.product
      
          
          
        else
          Array::push.apply $scope.products, data.product
          
        $scope.product_id = $scope.products[$scope.products.length - 1 ].id)
  
    $scope.add_to_cart = (product_id) ->
      
      Helpers.add_to_cart(product_id).success((data)->
        back_function = () ->
          $('#current_item').css({'background-color': 'initial'})
          
          
        current_item  = $('#current_item')
        current_item.css({'background-color':'#88ff88'})
          .animate({'background-color': '#FE980F'}, 6000, back_function)
      
        console.log("FSFSDFSDFSDFDSF< DFDSFDSF")).error((data)->
          console.log(data))
            
    $scope.init_id = angular.element('#init-data').data('init')
    $scope.product_id = $scope.init_id
    
  
      
      
    ]

