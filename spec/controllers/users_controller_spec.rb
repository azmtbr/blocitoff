require 'rails_helper'



    RSpec.describe UsersController, type: :controller do


    describe "GET #show" do
      before { get :show }

      it { should respond_with(:success) }
    end
  end
