require 'spec_helper'

describe "MainController" do
  before do
    get "/"
  end

  it "should respond ok" do
    last_response.ok?
  end
end
