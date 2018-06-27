class Word < String

  def initialize(string, input1, input2)
    @string = string
    @i1 = input1
    @i2 = input2
  end

  def replace_inputted_words
    new_array = @string.downcase.capitalize.split(" ")
    new_array.each do |word|
      word.sub! @i1, @i2
    end
    finished_array = (new_array.join(" ") + ".")
    print finished_array
    finished_array
  end
end
