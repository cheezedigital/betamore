class UserMailer < ActionMailer::Base
  default from: "Peter Jackson <pete@peteonrails.com>"

  def welcome(user)
  	@name = user.email.split("@").first
  	@name = @name.titleize

  	# @gravatar

    mail to: "#{@name} <#{user.email}>"
  end

  def new_mention(user, tweet)
  	@name = user.username
  	@tweet_text = tweet.simple_text
  	@tweet_id = tweet.to_param
  	mail to: user.email
  end
end
