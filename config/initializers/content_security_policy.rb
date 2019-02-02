Rails.application.config.content_security_policy do |policy|
  policy.default_src :self
  policy.font_src    :self, :data
  policy.img_src     :self, :https, :data
  policy.object_src  :none
  policy.script_src  :self
  policy.style_src   :unsafe_inline, :self, :https
  policy.base_uri    :self
end

Rails.application.config.content_security_policy_nonce_generator = -> request { SecureRandom.base64(16) }
