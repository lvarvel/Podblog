require 'spec_helper'

describe "podcasts/show.html.erb" do
  before(:each) do
    @podcast = assign(:podcast, stub_model(Podcast))
  end

  it "renders attributes in <p>" do
    render
  end
end
