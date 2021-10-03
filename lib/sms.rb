require 'twilio-ruby'

class SMS
  cattr_accessor = :client
  def initialize
    @client = Twilio::REST::Client.new(
    ENV['TWILIO_ACCOUNT_SID'],
    ENV['TWILIO_AUTH_TOKEN'])
  end

  def text(message)
    @client.messages.create(
    from: ENV['TWILIO_PHONE_NUMBER'],
    to: ENV['CELL_PHONE_NUMBER'],
    body: message)
  end
end
