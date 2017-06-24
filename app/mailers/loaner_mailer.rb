class LoanerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.loaner_mailer.welcome.subject
  #
  def welcome(loaner)
    @loaner = loaner
    mail(
      to: @loaner.email,
      subject: 'Bienvenue sur Peanut!'
    )
  end
end
