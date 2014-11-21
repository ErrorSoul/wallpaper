require 'spec_helper'

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
end
