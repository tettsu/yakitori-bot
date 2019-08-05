require 'slack-ruby-client'
require 'inifile'

Slack.configure do |config|
  @ini = IniFile.load("secret.conf")
  val = @ini['secret']['token']  
  config.token = val
end

@ini = IniFile.load("secret.conf")
channelName = @ini['channel']['name']

client = Slack::Web::Client.new
client.chat_postMessage(channel: channelName, text: 'あああ')