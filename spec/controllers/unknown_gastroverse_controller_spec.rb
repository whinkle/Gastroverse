require 'spec_helper'

describe UnknownGastroverseController do

  describe "GET 'bell_pepper'" do
    it "returns http success" do
      get 'bell_pepper'
      response.should be_success
    end
  end

  describe "GET 'tomato'" do
    it "returns http success" do
      get 'tomato'
      response.should be_success
    end
  end

  describe "GET 'sweet_potato'" do
    it "returns http success" do
      get 'sweet_potato'
      response.should be_success
    end
  end

end
