require("rspec")
require("find_and_replace")

describe("#Word") do
  it("will replace world with univserse") do
    new_string = Word.new("HELLO WORLD", "world", "universe")
    expect(new_string.replace_inputted_words).to(eq("Hello universe."))
  end
  it("replaces cat with dog") do
    new_phrase = Word.new("I am walking My CAT to the cathedRAl", "cat", "dog")
    expect(new_phrase.replace_inputted_words).to(eq("I am walking my dog to the doghedral."))
  end
  it("replaces worm with REEEE") do
    new_phrase = Word.new("I like CATS and dgas", "cat", "toad")
    expect(new_phrase.replace_inputted_words).to(eq("I like toads and dgas."))
  end
  it("replaces computer with dinosaur") do
    new_phrase = Word.new("i LOVve computers somebody give me a COMPUTER riGht NoW", "computer", "dinosaur")
    expect(new_phrase.replace_inputted_words).to(eq("I lovve dinosaurs somebody give me a dinosaur right now."))
  end
  it("still works if there is only one word") do
    new_phrase = Word.new("dog", "dog", "cat")
    expect(new_phrase.replace_inputted_words).to(eq("Cat."))
  end
end
