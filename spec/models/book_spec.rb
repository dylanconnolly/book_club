require 'rails_helper'

RSpec.describe Book do
  describe "relationships" do
    it { should have_many :authorbooks }
    it { should have_many(:authors).through(:authorbooks) }
  end

  describe "validations" do
    it {should validate_presence_of :title}
    it {should validate_presence_of :pages}
    it {should validate_presence_of :publication_year}
  end
