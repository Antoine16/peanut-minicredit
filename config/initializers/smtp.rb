ActionMailer::Base.smtp_settings = {
  address: ENV['SENDGRID_SMTP_SERVER'],
  port: '25',
  domain: 'heroku.com',
  user_name: ENV['SENDGRID_USERNAME'],
  password: ENV['SENDGRID_PASSWORD'],
  authentication: :plain,
  enable_starttls_auto: true
}
