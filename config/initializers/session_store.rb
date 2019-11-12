if Rails.env == "production"
  Rails.application.config.session_store :cookie_store, key: "_ApiCaelumEAP", domain: "https://api-caelum-eap.herokuapp.com"
else
  Rails.application.config.session_store :cookie_store, key: "_ApiCaelumEAP"
end
