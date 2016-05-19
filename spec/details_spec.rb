require 'rails_helper'
require 'spec_helper'

describe HousesController , :type => :controller do
    
    describe "details" do
         it 'it redirects to edit house' do
             expect(response).to redirect_to edit_house_path
        end
        
     

    end
end