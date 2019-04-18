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
  array = tweet.split(" ")
  array.map do |word|
    dictionary.map do |key, value|
      if word.downcase == key
        word.replace(value)
      end
    end
  end
  array.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.chars.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweets)
  tweets.split(" ").map do |tweet|
    if tweet.length > 140
      word_substituter(tweet)[0..140] + "..."
    else
      tweet
    end
  end
  .join(" ")
end
