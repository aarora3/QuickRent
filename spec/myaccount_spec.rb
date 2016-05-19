require 'spec_helper'
require 'rails_helper'
describe HousesController,:type => :controller do
    describe 'GET myaccount' do
        it 'renders the myaccount template' do
        get :myaccount
        expect(response).to render_template :myaccount
        end
    end
    describe 'GET privacy' do
        it 'renders the privacy template' do
        get :privacy
        expect(response).to render_template :privacy
        end
    end
    describe 'GET editprofile' do
        it 'renders the edit template' do
        get :editprofile
        expect(response).to render_template :editprofile
        end
    end
end