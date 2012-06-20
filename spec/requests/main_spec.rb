require 'spec_helper'

describe 'visiting the homepage' do
  before do
    visit '/'
  end

  it 'should have a body' do
    page.should have_selector('.beer', :count => 100000)    
  end
end
