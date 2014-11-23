require 'spec_helper'

describe ProductController do

  let!(:products) {FactoryGirl.create_list(:product, 7)}
  let!(:clues) {FactoryGirl.create_list(:clue, 7)}
  let!(:product){products.first}
  let!(:clue){clues.first}
  
  describe "index method" do 
    
      
    
    it "should be success" do
      
      
      get :index, search: product.marking 
      response.should be_ok
      
    end
  

  it "should return clue and product" do
      clue.marking = product.marking
      clue.save
      
      get :index, search: product.marking
     
      response.should be_ok
       assigns(:result).should eq [product, clue]
      
    end
  end
  

end


