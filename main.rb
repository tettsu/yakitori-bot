require 'slack-ruby-client'
require 'inifile'
require './praiseWords'

  Slack.configure do |conf|
    # secret.confから呼び出す版
    # @ini = IniFile.load("secret.conf")
    # token = @ini['yakitori-bot']['token']
    # conf.token = token

    # Herokuの環境変数使う版
    conf.token = ENV['YAKITORI_BOT_TOKEN']
  end

  # RTM Clientのインスタンス生成
  client = Slack::RealTime::Client.new

  # slackに接続できたときの処理
  client.on :hello do
    puts 'connected!'
  end

  # 対応するチャンネルのIDの準備
  # secretから読み込む版
  # @ini = IniFile.load("secret.conf")
  # devChId = @ini['devCh']['id']
  # praiseCh =  @ini['praiseCh']['id']

  # 普通にやる版
  devChId = 'CM1GF104D'
  praiseCh = 'CM38CFVL4'

  # ユーザからのメッセージを検知したときの処理
  client.on :message do |data|
    # 開発チャンネルの処理
    if data['channel'] == devChId
      if data['text'].include?('こんにちは')
        client.message channel: devChId, text: "こんにちは。"
      end
      if data['text'].include?('おはよう')
        client.message channel: devChId, text: "おはよう。"
      end
      if data['text'].include?('こんばん')
        client.message channel: devChId, text: "こんばんわ。"
      end
      if data['text'].include?('おやすみ')
        client.message channel: devChId, text: "おやすみなさい。"
      end
      if data['text'].include?('ムーミンパパ')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/moominpappa"
      end
      if data['text'].include?('ムーミンママ')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/moominmamma"
      end
      if data['text'].include?('スナフキン')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/snufkin"
      end
      if data['text'].include?('スニフ')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/sniff"
      end
      if data['text'].include?('ミィ') || data['text'].include?('ミイ')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/little-my"
      end
      if data['text'].include?('おじょうさん') || data['text'].include?('お嬢さん') || data['text'].include?('ノンノン') || data['text'].include?('フローレン')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/snorkmaiden"
      end
      if data['text'].include?('ムーミン')
        client.message channel: devChId, text: "https://www.moomin.co.jp/characters/moomintroll"
      end
    end

    # 称賛チャンネルの処理
    if data['channel'] == praiseCh
      if data['text'].include?('ほめて') || data['text'].include?('褒めて')
        client.message channel: praiseCh, text: getRandomPraiseWord
      end
      if data['text'].include?('こんにちは')
        client.message channel: praiseCh, text: "こんにちは。"
      end
      if data['text'].include?('おはよう')
        client.message channel: praiseCh, text: "おはよう。"
      end
      if data['text'].include?('こんばん')
        client.message channel: praiseCh, text: "こんばんわ。"
      end
      if data['text'].include?('おやすみ')
        client.message channel: praiseCh, text: "おやすみなさい。"
      end
      if data['text'].include?('ムーミンパパ')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/moominpappa"
      end
      if data['text'].include?('ムーミンママ')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/moominmamma"
      end
      if data['text'].include?('スナフキン')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/snufkin"
      end
      if data['text'].include?('スニフ')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/sniff"
      end
      if data['text'].include?('ミィ') || data['text'].include?('ミイ')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/little-my"
      end
      if data['text'].include?('おじょうさん') || data['text'].include?('お嬢さん') || data['text'].include?('ノンノン') || data['text'].include?('フローレン')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/snorkmaiden"
      end
      if data['text'].include?('ムーミン')
        client.message channel: praiseCh, text: "https://www.moomin.co.jp/characters/moomintroll"
      end
    end
    
  end

  # Bot start
  client.start!