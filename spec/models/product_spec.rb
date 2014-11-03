require 'spec_helper'

describe Product do
  before do
    @product = Product.new(title: "The best wallpaper",
                           price: 100.0,
                           description: "Perhaps, this is the best wallpaper",
                           marking: "1223mn",
                           weight: 0.5, 
                           height: 10.5)
  end

  subject { @product  }
  it { should respond_to(:title)}
  it { should respond_to(:price)}
  it { should respond_to(:description)}
  it { should respond_to(:marking)}
  it { should respond_to(:weight)}
  it { should respond_to(:height)}
  
  it { should be_valid }
end
