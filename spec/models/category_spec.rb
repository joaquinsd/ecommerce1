require 'rails_helper'

RSpec.describe Category, type: :model do
  before(:all) do
    @parent = Category.create(name: 'Test_Parent')
    @child = @parent.children.build(name: 'Test_Child')
  end

  it 'should equal to its children' do
    expect(@parent.children[0]).to eq(@child)
  end
  context 

end
