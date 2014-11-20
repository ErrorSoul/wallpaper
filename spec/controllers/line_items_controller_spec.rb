# -*- coding: utf-8 -*-
require 'spec_helper'
require 'pry'

describe LineItemsController do
  include CurrentCart
  let! (:product) {FactoryGirl.create(:product)}
  let! (:product1) {FactoryGirl.create(:product, title: "FFFfff")}
  
  after(:all) do
    Cart.line_items.destroy_all
    Cart.destroy_all
    
    Product.destroy_all
  end

  describe "create method" do
    it "should inc LineItem" do
      
      expect{
      post :create,  line_item: {product_id: product.id, quantity: 0}, :format => :json
      
    }.to change(LineItem,:count).by(1)
    end

    it "should return OK OK MESSAGE" do 
      
      post :create, line_item:{product_id: product.id, :quantity => 0}, :format => :json
      
      expected_json = { notice: 'Line item was successfully created'}.to_json
      expect(response.body).to eq expected_json 
    end
end


  describe "if add one product many times" do
    it "products quantity in line_item  should be incr" do
       post :create, line_item:{product_id: product.id, :quantity => 3}, :format => :json
       post :create, line_item:{product_id: product.id, :quantity => 7}, :format => :json
     
      line_item = LineItem.where('product_id = ? and product_type = ?', product.id, product.class.name).first
      expect(line_item.quantity).to eq 10
    end
  end


  describe "get_cart method" do 
    it "message when cart is empty" do
      
      
      get :show, id: 1, format: :json
      expected_json = {message: "Baша корзина пуста"}.to_json
      expect(response.body).to eq expected_json 
    end
      

    it "should return 2 line_items " do
      set_cart
      @cart.line_items.create!(product: product, quantity: 3)
      @cart.line_items.create!(product: product1, quantity: 4)
      get :show, id: 1, format: :json
      expected_json = { items: @cart.line_items}.to_json(:include => :product)
      expect(response.body).to eq expected_json 
    end
  end


  describe " destroy line_item in cart" do
    it "should return success message" do
      set_cart
      @cart.line_items.create!(product: product, quantity: 3)
      delete :destroy, id: @cart.line_items.first.id , format: :json
      expected_json = {message: "Your post deleted"}.to_json
      expect(response.body).to eq expected_json 
    end

    it "should dec LineItem" do
    set_cart
    @cart.line_items.create!(product: product, quantity: 3)
    @cart.line_items.create!(product: product1, quantity: 4)
    
    expect{
     delete :destroy, id: 1, format: :json
      
    }.to change(LineItem,:count).by(-1)
    end
      
  end

end
