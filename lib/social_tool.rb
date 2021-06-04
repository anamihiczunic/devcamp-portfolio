# module SocialTool
#   def self.twitter_search
#     client = Twitter::REST::Client.new do |config|
#       config.consumer_key        = ENV.fetch("TWITTER_CONSUMER_KEY")
#       config.consumer_secret     = ENV.fetch("TWITTER_CONSUMER_SECRET")
#       config.access_token        = ENV.fetch("TWITTER_ACCESS_TOKEN")
#       config.access_token_secret = ENV.fetch("TWITTER_ACCESS_SECRET")
#     end
#   end
#
#   client.search("#rails", result_type: 'recent').take(6).collect do |tweet|
#     "#{tweet.user.screen_name}: #{tweet.text}"
#   end
# end

module SocialTool


  def self.twitter_search

    client = Twitter::REST::Client.new do |config|

      config.consumer_key = Rails.application.credentials.dig(:consumer_key)

      config.consumer_secret = Rails.application.credentials.dig(:consumer_key_secret)

      config.access_token = Rails.application.credentials.dig(:access_token)

      config.access_token_secret = Rails.application.credentials.dig(:access_token_secret)

      config.bearer_token = Rails.application.credentials.dig(:bearer_token)

      # config.secret_key_base = Rails.application.credentials.dig(:secret_key_base)

    end

    client.search("#rubyonrails", result_type: 'recent').take(6).collect do |tweet|

      "#{tweet.user.screen_name}: #{tweet.text}"

    end

  end

end