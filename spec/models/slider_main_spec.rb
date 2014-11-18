require 'spec_helper'

describe SliderMain do
  before do
    f = File.open('spec/fixtures/dream.jpg')
    @slider = SliderMain.new(text:"This is awesome slider",
                             asset: f)
    
  end
  subject{@slider}
  it {should respond_to(:text) }
  it {should respond_to(:asset)}
  it {should be_valid}

  describe "when text is not present" do
    before {@slider.text = nil }
    it {should_not be_valid}
  end
  
end
