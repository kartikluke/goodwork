class NgoMailer < ActionMailer::Base
  default from: "from@example.com"

  def wait_for_approval(ngo)
  	@ngo = ngo
  	@url = root_url
  	mail(to: @ngo.email, subject: 'Thank you for registering on Goodwork.')
  end

  def approved(ngo)
  	@ngo = ngo
  	@url = root_path
  	mail(to: @ngo.email, subject: 'You\'ve been approved on Goodwork.')
  end

  def unapproved(ngo)
    @ngo = ngo
    @url = root_path
    mail(to: @ngo.email, subject: 'You\'ve been disapproved on Goodwork.')
  end

  def pledge_received(ngo, donation)
  	@ngo = ngo
  	@donation = donation
  	@url = root_url
  	mail(to: @ngo.email, subject: 'You\'ve received a pledge from Goodwork.')
  end

end
