
Devise.setup do |config|
  config.mailer_sender = 'SonNT @ Code4Pro <no-reply@Code4Pro.com>'
  require 'devise/orm/active_record'
  config.case_insensitive_keys = [:email]
  config.strip_whitespace_keys = [:email]
  config.skip_session_storage = [:http_auth]
  config.stretches = Rails.env.test? ? 1 : 10
  config.reconfirmable = true
  config.expire_all_remember_me_on_sign_out = true
  config.password_length = 8..72
  config.reset_password_within = 6.hours
  config.sign_out_via = :delete

  require 'omniauth-google-oauth2'
  config.omniauth :google_oauth2, '193177040642-5p43v59i20rodr6bkfjn1ocaasde54ov.apps.googleusercontent.com', 'tPGtCU74utZoBk9Q4QzsJlx5', {access_type: "offline", approval_prompt: ""}
end
