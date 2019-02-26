cask 'firefox-esr' do
  version '60.5.1'

  language 'cs' do
    sha256 'c82c54252c2714e35fe197b3b105cdac78fcfbcad37f580e9111437cf5da4411'
    'cs'
  end

  language 'de' do
    sha256 '176557ad2c4d8f13d72b0de559869a676d4330e06d205e15fd2ea10ae4c23485'
    'de'
  end

  language 'en-GB' do
    sha256 'd19b1a8e432c9f5761047dfe88ecbf08dfc762fd01c5e9dbfea1040e64f1a82f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '0f697ef7423429fe70a3019e2d2cd2b3982106ef4103eef5aba73fbc6dafb0a6'
    'en-US'
  end

  language 'fr' do
    sha256 '057a8e7c77fd9a4117870f3575ea728319c22a14c9b88fb8e8a0586e6c434f67'
    'fr'
  end

  language 'gl' do
    sha256 'c24b8bb321389f345a526d2c99cd2be3809410c157d9292646b6acbe9d279569'
    'gl'
  end

  language 'it' do
    sha256 '0f4d26fac3b3dacd4bc9cf49941b3bd32db0069c4dbd8532d7bc814f3c52148a'
    'it'
  end

  language 'ja' do
    sha256 '5e4ab4fc7b51908ee5bda1cebf398706c4d5be77cebc6fbe0410511bf99a7bd5'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '9f72d3076371885246345c6d6313aa329bf9762d1df73c6571096a3662c085c1'
    'nl'
  end

  language 'pl' do
    sha256 '97aa20a81f6042d500e9861d0a0117c984a8101eaf77bad979eac5507eb43efd'
    'pl'
  end

  language 'pt' do
    sha256 '5aba6f10c7c3f0df28f839d17ea0518fc47360f2a7e8f2c66fe27d501508a486'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6fbeba43a572f9b71ddda96584573ad266bc0889fecea3dec606668de3d9b760'
    'ru'
  end

  language 'uk' do
    sha256 '7481e1d988ef07b393ac3ec08e8b84a2ff83dcfaeb9ada94f0668487e85bd6c7'
    'uk'
  end

  language 'zh-TW' do
    sha256 '55d47ad4bd66ea7aa24fbf127b9fd8403edf60b529411653c1cac40503051326'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e4d1fc414f82056b56bfd01d221601a41cf52f575cbc0007d5ef4f32efa263ea'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.corecode.io/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  conflicts_with cask: [
                         'firefox',
                         'firefox-beta',
                       ]

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
