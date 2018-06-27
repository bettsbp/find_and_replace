require("rspec")
require("find_and_replace")

describe("#Word") do
  it("will replace world with univserse") do
    new_string = Word.new("hello world")
    expect(new_string.replace_word()).to(eq("hello universe"))
  end
end
