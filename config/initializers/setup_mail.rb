ActionMailer::Base.delivery_method = :smtp
ActionMailer::Base.smtp_settings = {
	:address					=> 'smtp.sendgrid.net',
	:port						=> '587',
	:authentication				=> :plain,
	:user_name					=> 'app47846217@heroku.com',
	:password					=> '9bby5gfv2681',
	:domain						=> 'closetshare1.herokuapp.com',
	:enable_starttls_auto		=> true
}