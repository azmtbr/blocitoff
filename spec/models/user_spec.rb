require 'rails_helper'
require 'faker'

RSpec.describe User, type: :model do

  let(:user) { User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "helloworld") }
  let(:item) { user.items.create!(name: Faker::Lorem.sentence) }


  it { should have_many(:items) }



end
