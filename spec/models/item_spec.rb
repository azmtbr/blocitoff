require 'rails_helper'
require 'faker'

RSpec.describe Item, type: :model do

  let(:user) { User.create!(name: Faker::Name.name, email: Faker::Internet.email, password: "helloworld") }
  let(:item) { user.items.create!(name: Faker::Lorem.sentence) }


  it { should belong_to(:user) }

  # context "methods" do
  #   describe "days left calculations" do
  #     it "should know its days left" do
  #       item.days_left < Date.today + 8.days
  #     end
  #   end
  # end
  #




end
