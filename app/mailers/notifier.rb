class Notifier < ActionMailer::Base
  default from: "test1w3try@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.n_otifier.resume_received.subject
  #
  def resume_received(resume)
    @resume = resume
    mail :to => 'tes2w3try@163.com', :subject => 'Resume recevied Confirmation!'
  end
end
