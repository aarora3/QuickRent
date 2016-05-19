require 'spec_helper'
require 'rails_helper'
#require 'rspec/rails'
#require 'shoulda/matchers'

describe HousesController,:type => :controller do
    
  it 'should create house successfully' do
    post :create, house: {title: '11 Catherine St', price: '40', name: 'Ankush', email: 'aarora3@binghamton.edu'}
    expect(response).to redirect_to houses_path
  end
    
  describe '#title' do
  
    it 'should have house title' do
      record = House.new
      record.title = '' # invalid state
      record.valid? # run validations
      record.errors[:title].should include("can't be blank") # check for presence of error

      record.title = '11 Catherine' # valid state
      record.valid? # run validations
      record.errors[:title].should_not include("can't be blank") # check for absence of error
    end
    
  end
  
  describe '#name' do
  
    it 'should have owner name' do
      record = House.new
      record.name = '' # invalid state
      record.valid? # run validations
      record.errors[:name].should include("can't be blank") # check for presence of error

      record.name = 'Ankush' # valid state
      record.valid? # run validations
      record.errors[:name].should_not include("can't be blank") # check for absence of error
    end

  end


    
end

