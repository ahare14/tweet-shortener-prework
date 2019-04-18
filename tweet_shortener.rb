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

def word_substituter(str_tweets)
  result = []
  arr_dictionary = dictionary.keys
  arr_tweets = str_tweets.split(' ')
  arr_tweets.each do |word|
    arr_dictionary.include?(word) ? result << dictionary[word] : result << word
  end
  result.join(' ')
end


def bulk_tweet_shortener(tweets)
  tweets.collect do |tweet|
    puts word_substituter(tweet)
  end
end
