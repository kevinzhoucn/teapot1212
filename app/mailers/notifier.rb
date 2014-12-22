class Notifier < ActionMailer::Base
  default from: "tr_reuters@163.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.n_otifier.resume_received.subject
  #
  def resume_received(resume)
    @resume = resume
    mail :to => 'zzpf@163.com', :subject => 'Resume recevied Confirmation!'
  end
end
