require "rails_helper.rb"

RSpec.describe "application routing" do
  it "routes the linter configs controller" do
    expect(get: "/config/foo/bar/baz").to route_to(
      controller: "linter_configs",
      action: "show",
      owner: "foo",
      repo: "bar",
      linter: "baz",
    )
  end
end