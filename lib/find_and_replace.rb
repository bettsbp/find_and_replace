class Word < String

  def initialize(string, input1, input2)
    @string = string
    @i1 = input1
    @i2 = input2
  end

  def replace_inputted_words
    new_array = @string.downcase.split(" ")
    new_array.each do |word|
      word.sub! @i1, @i2
    end
    finished_array = (new_array.join(" ") + ".").capitalize
    finished_array
  end
end

puts "Enter a sentence:"
string = gets.chomp
puts "Enter the word you want to replace:"
input1 = gets.chomp
puts "Enter the word to replace it with:"
input2 = gets.chomp
new_phrase = Word.new(string, input1, input2)
puts "Now running..."
puts "Here is your sentence:"
final_phrase = new_phrase.replace_inputted_words
puts final_phrase
