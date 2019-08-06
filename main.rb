require 'slack-ruby-client'
require 'inifile'
require './praiseWords'

  # secret.confからTokenを呼び出して接続する
  Slack.configure do |conf|
    # @ini = IniFile.load("secret.conf")
    # token = @ini['workspace']['token']
    # conf.token = token
    conf.token = 'xoxb-697706279393-699072249683-qtjCmT6h5FtSIRtqGAvBAvuW'
  end

  # RTM Clientのインスタンス生成
  client = Slack::RealTime::Client.new

  # slackに接続できたときの処理
  client.on :hello do
    puts 'connected!'
  end

  # 対応するチャンネルのIDの準備
  # @ini = IniFile.load("secret.conf")
  # devChId = @ini['devCh']['id']
  # praiseCh =  @ini['praiseCh']['id']
  devChId = 'CM1GF104D'
  praiseCh = 'CM1GF104D'

  # ユーザからのメッセージを検知したときの処理
  client.on :message do |data|
    # 育成チャンネルの場合の処理
    if data['channel'] == devChId
      if data['text'].include?('こんにちは')
        client.message channel: devChId, text: "こんにちは。"
      end
      if data['text'].include?('かしこい') || data['text'].include?('賢い')
        client.message channel: devChId, text: "ありがとう。"
      end
      if data['text'].include?('ムーミン')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/moomintroll"
      end
    end

    # 称賛チャンネルの場合の処理
    if data['channel'] == praiseCh
      if data['text'].include?('ほめて') || data['text'].include?('褒めて')
        client.message channel: praiseCh, text: getRandomPraiseWord
      end
    end
    
  end

  # Bot start
  client.start!