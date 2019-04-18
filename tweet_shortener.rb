# Write your code here.
def dictionary
  substitutes = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    dictionary.map do |key, value|
      if word == key
        word.replace(value)
      end
    end
  end
  tweet.join(" ")    
end
