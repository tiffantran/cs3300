require "rails_helper"

RSpec.describe "The math below is wrong..." do
  it "should equal 42 but we said 43" do
    expect(6 * 7).to eq(43)
  end
end

require "rails_helper"

RSpec.describe "The math below is right..." do
  it "should equal 42" do
    expect(6 * 7).to eq(42)
  end
end

require "rails_helper"

RSpec.describe "hello spec" do
  # ...
  describe String do
    let(:string) { String.new }
    it "should provide an empty string" do
      expect(string).to eq("")
    end
  end
 end

 require "rails_helper"

RSpec.describe Project, type: :model do
  # ...

  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end