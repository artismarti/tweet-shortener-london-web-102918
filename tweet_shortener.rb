# Write your code here.
def dictionary
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
  }
end

def word_substituter(tweet)
  tweet.split(" ").map do |word|
    if dictionary.keys.include? (word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end
  .join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.map{|tweet| puts word_substituter(tweet)}
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  selective_tweet_shortener(tweet)
    tweet.length > 140 ? "#{tweet[0..136]}..." : tweet
end
