cask 'firefox-beta' do
  version '51.0b4'

  language 'de' do
    sha256 '07f857fb28b808e7fc7cfe7c355c0b0ca739d68116a58ed247ad636169ecd00b'
    'de'
  end

  language 'en-GB' do
    sha256 '6244b18c96a0b4d65770cd86eceb527c0a243bfdf5f509575e737a3df2561483'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '5768e2e38b911b5155280f6f966fd0f55cfe22554250b3bf5070c2086c467d2a'
    'en-US'
  end

  language 'fr' do
    sha256 'f5b5cf5df4ef048da4a13ec3fe96100293528ec50fcf106c68bcaf2ac2cf1523'
    'fr'
  end

  language 'gl' do
    sha256 '847135f512a1b392738f85cbebae62ffc525c42a9c495e2a6d0a54bf5cfed92d'
    'gl'
  end

  language 'it' do
    sha256 '09cc5194a4aa9e82176997d0ce41c9726166eb92319bd73bfdf9d0c25f385977'
    'it'
  end

  language 'ja' do
    sha256 '57b4866e4ace88bca8e128854209739e7b84ddd07cd0899a7dec02b7de57dac3'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '752f805530f7c3939716d713362c4ef57c567413128238c3525444a77f9f5ea7'
    'nl'
  end

  language 'pl' do
    sha256 'f00967647a020b476ee8f7b6ab04f2700c5684cc355777dad18b8c5af9304dca'
    'pl'
  end

  language 'pt' do
    sha256 'f13b811130f09887b6d3a7776a29258a83d10cfde47123af5347141eacc9e65e'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7ba84d82f37f8de0728a7fd4a4a3e3c65e2f0a36073ee0d143c3ed103f3e2e8b'
    'ru'
  end

  language 'uk' do
    sha256 'f3c2182fafbdc20b597995260d2fb5ba0a8086550145c7d9b2b9ac722a66440d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8f640cc09d870b604b2261ce7be7c6439a1392cda8b1155d1023bab776202214'
    'zh-TW'
  end

  language 'zh' do
    sha256 '46481f5ed31847401ade91c26a131a76fdc6b182681255445d3baeb497cccfab'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
