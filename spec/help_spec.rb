require 'spec_helper'
require 'rails_helper'
describe HousesController,:type => :controller do
    describe 'GET help' do
        it 'renders the help template' do
        get :help
        expect(response).to render_template :help
        end
    end
    describe 'GET cost' do
        it 'renders the cost template' do
        get :cost
        expect(response).to render_template :cost
        end
    end
    describe 'GET need' do
        it 'renders the need template' do
        get :need
        expect(response).to render_template :need
        end
    end
end