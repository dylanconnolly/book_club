require 'rails_helper'

RSpec.describe Author do
  describe "relationships" do
    it { should have_many :authorbooks }
    it { should have_many(:books).through(:authorbooks) }
  end

  describe "validations" do
    it {should validate_presence_of :name}
  end

end
