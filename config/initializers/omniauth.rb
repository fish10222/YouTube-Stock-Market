OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '716235871623-7hvgvspbg8evc6hkrco5fpiv04c0rst2.apps.googleusercontent.com', 'vsDr_uWfto3dc88Gs213Fske', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end


=begin
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, ENV["716235871623-7hvgvspbg8evc6hkrco5fpiv04c0rst2.apps.googleusercontent.com"], ENV["vsDr_uWfto3dc88Gs213Fske"],
    {
      :name => "google",
      :scope => "email, profile, plus.me, http://gdata.youtube.com",
      :prompt => "select_account",
      :image_aspect_ratio => "square",
      :image_size => 50
    }
end
=end
