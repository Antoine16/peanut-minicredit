class BorrowerMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.borrower_mailer.thank_you.subject
  #
  def welcome(borrower)
    @borrower = borrower
    mail(
      to: @borrower.email,
      subject: 'bienvenue sur Peanut!'
    )
   end

end
