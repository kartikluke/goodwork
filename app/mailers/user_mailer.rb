class UserMailer < ActionMailer::Base
  default from: "from@example.com"

  def user_pledge_confirmation(random_user, ngo)
  	@user = random_user
  	@ngo = ngo
  	@url = root_url
  	mail(to: @user.email, subject: 'Thank you for pledging here at Goodwork, we\'ve put you in contact with #{ngo.name}')
  end

end