namespace :payment  do
  desc "processing a payment"
  task process_payment: :environment do
    Credit.payable
  end
end
