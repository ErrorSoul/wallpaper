require 'spec_helper'
require 'pry'
describe OrdersController do
  include CurrentCart
  let! (:order){FactoryGirl.create(:order)}
  before {set_cart}

  describe "GET 'create'" do
    it "returns success message" do
      post :create, order: FactoryGirl.attributes_for(:order), format: :json
      expected_json = { message: "Your order saved"}.to_json
      expect(response.body).to eq expected_json 
    end
    it "increase Order count" do
      expect{
      post :create, order: FactoryGirl.attributes_for(:order), format: :json
      
    }.to change(Order,:count).by(1)
    end
  end

end
