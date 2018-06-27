require("rspec")
require("find_and_replace")

describe("#Word") do
  it("will replace world with univserse") do
    new_string = Word.new("hello world")
    expect(new_string.show_string).to(eq("hello world"))
  end
end
