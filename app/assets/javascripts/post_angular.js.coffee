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

  .directive('ngReallyClick', [ () ->
    restrict: 'A'
    link: (scope, elem, attrs) ->
      elem.bind('click', () ->
        message = attrs.ngReallyMessage
        if message and confirm(message)
          scope.$apply(attrs.ngReallyClick))
  
  ])
  .controller "CartShowCtrl", ["$scope", "$http","$timeout",  ($scope, $http, $timeout) ->
    $http.get("line_items/1").success((data) ->
      if data.message
        $scope.message = data.message
        
      else
        $scope.items = data.items
      
        console.log($scope.items)).error((data)->
          console.log(data))

    $scope.total = ->
      total = 0
      angular.forEach $scope.items, (item) ->
        total += item.quantity * item.product.price
        return

      total
    
    
    $scope.delete_notice = ->
      $scope.notice = false 
    #update quantity in items
    $scope.update_cart = (callback, error_callback) ->
      update_items = [] 
      angular.forEach $scope.items, (item) ->
        update_items.push({id: item.id, quantity: item.quantity})
      $http({method: "PATCH", url: "/line_items/1", data: {items: update_items}})
        .success(callback).error(error_callback)
      
    #error callback
    error_callback = (error) ->
      console.log(error, "FFF")
    $scope.t = ->
      console.log("FFFFFFFFFFFFFFFFKKKK")
    #for save cart    
    $scope.line_items_update = ->
      #success callback
      callback = (data) ->
        if data.message is "Your line_item updated"
          $scope.notice = "Ваша корзина обновлена"
          if $scope.notice
            $timeout($scope.delete_notice, 3000)
        else console.lod(data)
      $scope.update_cart(callback, error_callback)

    #for create order 
    $scope.contact_form = () ->
      #success callback
      callback = (data) ->
        if data.message is "Your line_item updated"
          $scope.button_hide = true
        else
          console.log(data)


      $scope.update_cart(callback, error_callback)

    #create order 
    $scope.create_order = (order) ->
      callback = (data) ->
        if data.message = "Your order saved"
          $scope.button_hide = false
          $scope.message = "Ваш заказ принят. Спасибо за покупку"
      $http.post("/orders", order: order).success(callback)
        .error(error_callback)
        
    $scope.delete = (idx) ->
      post_to_delete = $scope.items[idx]
      $http.delete("/line_items/#{post_to_delete.id}").success((data) ->
        if data.message is "Your post deleted"
          
          console.log(data, 'delete.data')
          #post_to_delete.hideValue = true)
          $scope.items.splice(idx, 1))
            .error((error) -> console.log(error))
            


    ]
    

   .controller "CartCtrl", ["$scope", "$http", "Helpers", ($scope, $http, Helpers) ->
      $scope.t = ->
        console.log("I am working too")
      $scope.add_to_cart = (product_id) ->
        console.log("Iam working now")
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

