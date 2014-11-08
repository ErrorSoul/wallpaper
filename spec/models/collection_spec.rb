require 'spec_helper'

describe Collection do
 before do 
    @label = Label.new(name: "Porshe")
    @collection = @label.collections.build(name: "Vinil")
  end

  subject { @collection }
  it { should respond_to(:name)}
  it { should respond_to(:label_id)}
end
