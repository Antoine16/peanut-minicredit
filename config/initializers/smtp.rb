ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '25',
  domain: 'https://peanut-minicredit.herokuapp.com/',
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}
