require 'spec_helper'
require 'pry'

describe LineItemsController do
  let! (:product) {FactoryGirl.create(:product)}
  
  
  after(:all) do
    Product.destroy_all
  end

  describe "create method" do
    it "should return OK message" do
      
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
      
end
