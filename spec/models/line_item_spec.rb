require 'spec_helper'
require "pry"
describe LineItem do
 
    let! (:product) {FactoryGirl.create(:product)}
    let! (:cart) {FactoryGirl.create(:cart)}
    
  before do 
    @line_item = cart.line_items.build(product: product, quantity: 3)
    
    end
  subject {@line_item}
  #pry.binding
  it {should respond_to(:cart) }
  it {should respond_to(:product)}
  it {should respond_to(:quantity)}
  it {should be_valid}
  
end
