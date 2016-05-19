require 'spec_helper'
require 'rails_helper'
describe HousesController,:type => :controller do
    describe 'GET place' do
        it 'renders the place template' do
        get :place
        expect(response).to render_template :place
        end
    end
    describe 'GET mainst' do
        it 'renders the mainst template' do
        get :mainst
        expect(response).to render_template :mainst
        end
    end
    describe 'GET chapin' do
        it 'renders the chapin template' do
        get :chapin
        expect(response).to render_template :chapin
        end
    end
end