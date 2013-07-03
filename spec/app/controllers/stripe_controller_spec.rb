require 'spec_helper'

describe "StripeController" do

  it "should respond ok" do
    get "/"
    last_response.ok?
  end
end
