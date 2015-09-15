require 'rails_helper'
require 'faker'

RSpec.describe ItemsController, type: :controller do



  describe "POST #new" do
    before { get :new }

      it {should respond_with(:ok) }
      
    end
  end


end
