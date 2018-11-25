class CustomerMailer < ApplicationMailer
   def welcome_email(customer_id)
       @customer = Customer.find customer_id
       attachments["sample.jpg"] = File.read("#{Rails.root}/app/assets/images/06.jpg")
        mail(to: @customer.email, subject: "Welcome to our page.")
   end
end
