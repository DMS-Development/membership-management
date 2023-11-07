

class ApplicationFailureApp < Devise::FailureApp
  def http_auth_body
    return super unless request.format.symbol == :json
    {
      success: false,
      errors: [i18n_message]
    }.to_json
  end
end
