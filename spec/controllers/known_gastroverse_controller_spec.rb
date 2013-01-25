require 'spec_helper'

describe KnownGastroverseController do

  describe "GET 'mother_sauces'" do
    it "returns http success" do
      get 'mother_sauces'
      response.should be_success
    end
  end

  describe "GET 'roasted_chicken'" do
    it "returns http success" do
      get 'roasted_chicken'
      response.should be_success
    end
  end

  describe "GET 'soup'" do
    it "returns http success" do
      get 'soup'
      response.should be_success
    end
  end

end
