class Word < String
  def initialize(string)
    @string = string
  end

  def show_string
    @string
  end

  def replace_word
    new_array = @string.split(" ")
    x = 0
    print new_array
    while (x < new_array.length) do |x|
      if new_array|x|.include?("world") do
        new_array.sub!("world", "universe")
      end
      x += 1
    end
  end
end
