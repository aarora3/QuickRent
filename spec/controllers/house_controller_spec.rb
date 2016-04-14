require 'spec_helper'
require 'rails_helper'

describe HousesController,:type => :controller do
    
    describe 'GET welcome' do
        it 'renders the welcome template' do
            get :welcome
            expect(response).to render_template :welcome
        end
    end
    
    describe 'GET login' do
        it 'renders the login template' do
            get :login
            expect(response).to render_template :login
        end
    end
    
    describe 'GET signup' do
        it 'renders the signup template' do
            get :signup
            expect(response).to render_template :signup
        end
    end
    
end
