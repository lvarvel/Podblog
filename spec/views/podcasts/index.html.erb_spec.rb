require 'spec_helper'

describe "podcasts/index.html.erb" do
  before(:each) do
    assign(:podcasts, [
      stub_model(Podcast),
      stub_model(Podcast)
    ])
  end

  it "renders a list of podcasts" do
    render
  end
end
