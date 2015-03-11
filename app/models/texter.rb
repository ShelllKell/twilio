class Texter

  def initialize
    @client = Twilio::REST::Client.new Rails.application.secrets.account_sid, Rails.application.secrets.auth_token
  end

  def send_text(text_body)
    @client.messages.create(
    from: '+1720-613-6378',
    to: '303-882-8925',
    body: text_body
    )
  end

end
