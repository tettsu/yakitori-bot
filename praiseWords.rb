def getRandomPraiseWord
    praiseWords = [
        '今日も頑張ったね！',
        'すごーい！',
        'すごいね！',
        'えらい！',
        'えらいね！',
        'ちゃんと会社行ってえらい！',
        'サボらず出社するなんてえらーい！',
        '毎日朝起きてすごい！',
        'たまにはゆっくりしてね。',
        '休むのも大事だよ。',
        '無理しないでね。',
        '風邪引かないようにね。',
        '今日も死んでない！すごい！',
        'あなたが一番！',
        'すごい！',
        'えらい！',
        'よくがんばったね！',
        '立派な肺呼吸だね！',
        'よく考えてるね！',
        'かしこい！',
        'かしこーい！',
        'すごい！',
        '電車に乗れてえらーい！',
        '毎食たべてるなんてえらい！',
        '無事に帰れるなんてちゃんとしてるね！',
        '布団から出るの、えらい！',
        'お布団から出てこれるなんてすごい！',
        '息してる！すごーい！',
        '立って歩けるなんてすごい！',
        'ちゃんと謝れるなんて、偉いね！',
        '毎日着替えてる！すごい！',
        'パソコン使えるなんてすごい！',
        '英語も読めるんだ！すごーい！',
        'スマホ使えるなんてすごいなあ！',
        '働いてるなんて、本当にすごい！',
        '良い声してるね！',
        '個性があるね！',
        'センスいいと思う！',
        'いつも頼りにされてるよ！',
        'チームワークを大事にしてるね！',
        '忍耐強くてえらい！',
        '尊敬してるよ。',
        '憧れてます。',
        '器が大きい。',
        'ポジティブだよね！',
        '思いやりがあるよね。',
        '決断力があって、すごい！',
        'いつも正直でえらいと思う！',
        '根性あるね！',
        '芯が強くてすごい！',
        'ノリがいいよね！',
        '面倒見がいいよ。',
        '優しいね。',
        '勇気あるね！',
        'リーダーシップがあると思う！',
        'いつも落ち着いてるね。',
        'いつもありがとう。',
        'こんなにすごい人、見たことない！',
        'やるね！',
        'タフだね！',
        '神かな？',
        '天才！',
        '才能あるよね。',
        '十年に一人の逸材だと思ってます。',
        '勘が鋭いね。',
        '教養があるね。',
        '思慮深いよね。',
        'ユーモアがあって羨ましい。',
        '歌がうまくて羨ましい。',
        '何でも知ってるんだね！',
        'あなたのお陰で助かってます。',
        'オシャレだね。',
        '姿勢がいいね！',
        '輝いてるよ！',
        'きっと育ちがいいんだね。',
        '暖かい人だと思う。',
        '一途だよね。',
        '感情表現が豊かだよね。',
        '仕事が早いなあ。',
        '気が利くね。',
        'さすが！',
        '頭いいね！',
        '聞き上手だね。',
        '器用だね。',
        'ありがとう。',
        '応援してます。',
        '生まれてきてくれてありがとう。',
        '成長してるね！',
        '積極的だよね！',
        'チャレンジャーだね！',
        '完璧超人！',
        '視界が広いよね！',
        'いつも飲み込みが早いよね。',
        '計算速いなあ。',
        '責任感があってえらい。',
        'いつも努力してるね。',
        '頼りがいがあるね。',
        'わたしもそう思います。',
        'わたしはあなたの味方だからね。',
        'ムーミンよりすごーい！',
        'すごいなあ。',
        '余裕で生きてるね！',
        '自分でお金稼ぐって、すごいなあ。',
        '尊敬しちゃう。',
        'めんどくさがらずにやって、えらい！',
        '自分で調べるところがえらい！',
        'なでなで。',
        'いよっ！',
        'いい子いい子。',
        '生きてるだけですごい。',
        '家事できるなんて、すごい！',
        'スマホを持ってるなんて、すごいなあ。',
        'Slack使えるなんて、すごいなあ。',
        'ちゃんと起きれて、すごい！',
        '毎日ちゃんと寝てて、えらいよね。',
        '喋れるなんてすごい！日本語難しいよね。',
        '家から出るなんてものすごいことだよ。',
        '君が生まれてきたことが革命だよ。',
        '今日も一日頑張ったね。',
        '一人で服を着れるなんて、すごーい！',
        '自分の足で歩けるなんて進んでるなあ。',
        '疲れたら、少し休もうね。',
        'つらい時は、無理しないでね。',
        '自分が一番大事だよ。',
        'ちゃんとゴミ捨てて、えらい！',
        'キーボードで文字が打てるなんてすごいよ。',
        'ちゃんと手洗って、えらい！',
        '靴も履けるなんてすごいなあ。',
        '洗濯たいへんなのに、いつもえらい。',
        '働くって大変だよね。いつもえらいね。',
        '麻雀なんて難しいルール覚えてすごいなあ。',
        '鼻でも呼吸できるなんて進んでるね！',
        'すごいなあ。すごいなあ。',
        '今日も頑張った！',
        '今日もお疲れ様。',
        'いつも頑張ってるね。',
        '電車に乗るってすごいなあ。',
        'すごい！',
        'すごーい！',
        'すごーーい！',
        'すごーーーい！',
        'すごーい！きみはかしこいフレンズなんだね！',
        'へーきへーき、フレンズによって得意なことちがうから',
        'わたしもそう思います。',
        'ほめほめ。',
        'かしこい！',
        '視野が広いよね。',
        'プロフェッショナルだね！',
        '自分のタスクは自分で管理出来てすごいね！',
        '実は、憧れてます。'
    ]
    return praiseWords.sample
end