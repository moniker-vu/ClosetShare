<<<<<<< HEAD
ActionMailer::Base.delivery_method = :stmp
ActionMailer::Base.smtp_settings = {
 
  :address 					=> 'smtp.sendgrid.net',
  :port: 					=> "25",
  :domain 					=> "heroku.com", 
  :authentication 			=> :plain,
  :enable_starttls_auto: 	=> true,
  :user_name 				=> ENV["SENDGRID_USERNAME"],
  :password 				=> ENV["SENDGRID_PASSWORD"]
}

=======
>>>>>>> f3bee86a75aaed944bcf949412002c4e6c8c91f1
