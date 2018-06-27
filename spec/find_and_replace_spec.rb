require("rspec")
require("find_and_replace")

describe("#Word") do
  it("will replace world with univserse") do
    new_string = Word.new("HELLO WORLD", "world", "universe")
    expect(new_string.replace_inputted_words).to(eq("Hello universe"))
  end
  it("replaces cat with dog") do
    new_phrase = Word.new("I am walking My CAT to the cathedRAl", "cat", "dog")
    expect(new_phrase.replace_inputted_words).to(eq("I am walking my dog to the doghedral"))
  end
  it("replaces worm with REEEE") do
    new_phrase = Word.new("I love WORMS and WORMS are so cool but worms are not very cute in real life", "worms", "REE")
    expect(new_phrase.replace_inputted_words).to(eq("I love REE and REE are so cool but REE are not very cute in real life"))
  end
end
