require 'spec_helper'
require 'pry'
describe Order do
  before do 
    @order = Order.new(name: "Danny",
                       address: "123456, Alabama, 35",
                       phone: "555 5555")
  end
  subject {@order}
  it {should respond_to(:name)}
  it {should respond_to(:address)}
  it {should respond_to(:phone)}
  it {should respond_to(:line_items)}
  it {should be_valid}


  describe "when some attr not present" do

    [:name, :address, :phone].each do |x|
      describe  "#{x} is nil" do 
        before {@order.send("#{x}=", nil)}
        it {should be_invalid}
      end
    end
    describe "name is nil" do
      before {@order.name = nil}
      it {should be_invalid}
    end

    describe "name is empty string" do
      before {@order.name = " "}
      it {should be_invalid}

    end

  end


  describe "when length is too short"do 
    [:name, :address, :phone].each do |x|
      describe "#{x}.length = 2" do
        before {@order.send("#{x}=", "a" * 2 )}
        it {should be_invalid} 
      end
    end
  end


  describe "add line_items from cart " do 
    let! (:product_list) {FactoryGirl.create_list(:product, 7)}
    let! (:cart) {FactoryGirl.create(:cart)}
    let! (:order) {FactoryGirl.create(:order)}
    
    before  do
      
      product_list.each do |product|
        cart.line_items.create!(product: product)
      end
    end
    after(:all) do
        [Product,  Cart, Order].map(&:destroy_all)
      
    end
    
    describe "cart's line_items " do 
      
      before {order.add_line_items_from_cart(cart)}
     
      it "should no line_items in cart" do
          
       
        expect(cart.line_items.length).to eq 7
        end
      it "should have many line_items in order" do
        
        expect(order.line_items.length).to eq 7
        end
      end
    
  end      
end
