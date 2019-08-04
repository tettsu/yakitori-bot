require 'slack-ruby-client'
require 'inifile'

  # secret.confからTokenを呼び出して接続する
  Slack.configure do |conf|
    @ini = IniFile.load("secret.conf")
    val = @ini['secret']['token']  
    conf.token = val
  end

  # RTM Clientのインスタンス生成
  client = Slack::RealTime::Client.new

  # slackに接続できたときの処理
  client.on :hello do
    puts 'connected!'
    @ini = IniFile.load("secret.conf")
    val = @ini['channel']['id']  
    conf.token = val
    client.message channel: val, text: 'connected!'
  end

  # ユーザからのメッセージを検知したときの処理
  client.on :message do |data|
    if data['text'].include?('こんにちは')
      client.message channel: data['channel'], text: "こんにちは。"
    end
    if data['text'].include?('かしこい') || data['text'].include?('賢い')
      client.message channel: data['channel'], text: "ありがとう。"
    end
    if data['text'].include?('ムーミン')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/moomintroll"
    end
    if data['text'].include?('フローレン') || data['text'].include?('スノークのお嬢さん')|| data['text'].include?('スノークのおじょうさん')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/snorkmaiden"
    end
    if data['text'].include?('スナフキン')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/snufkin"
    end
    if data['text'].include?('ミィ')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/little-my"
    end
    if data['text'].include?('スニフ')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/sniff"
    end
    if data['text'].include?('ムーミンパパ')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/moominpappa"
    end
    if data['text'].include?('ムーミンママ')
      client.message channel: data['channel'], text: "https://www.moomin.co.jp/characters/moominmamma"
    end
  end

  # Bot start
  client.start!