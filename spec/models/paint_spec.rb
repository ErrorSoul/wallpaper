# -*- coding: utf-8 -*-
require 'spec_helper'

describe Paint do
  before do 
    @paint = Paint.new(name: "Геометрический" )
  end

  describe "when name is not present" do 
    before {@paint.name = nil }
    it {should be_invalid}
  end
    
end
