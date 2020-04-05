cask 'firefox-esr' do
  version '68.6.1'

  language 'cs' do
    sha256 '6598ebdbe318895e6c657e95d12f364c17003bfeecc1f80cc4c6a8e6e6396bc0'
    'cs'
  end

  language 'de' do
    sha256 '1f0039914151e5ff3e5aa474b7250f02d88db3891c594934167243794d50fc77'
    'de'
  end

  language 'en-GB' do
    sha256 '5f6c0cc0dc5735ab45ebedd5bcbf03c51c79c6ca074acc8f252f26a2274c8645'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6cfcb39205744366bf3cc226f4698c4cb91f9863b67fc899b25ab084994730ae'
    'en-US'
  end

  language 'fr' do
    sha256 'e8675f1fa6f70dbacf968597b100a6b69310fdc041260ba1e178d91ab2360d49'
    'fr'
  end

  language 'gl' do
    sha256 '4ca31315db7f998f7408401e7c3d841843a1b8e4a7d1b5ac33269ce636289436'
    'gl'
  end

  language 'it' do
    sha256 '8ed27eafc5c0984faf18d31b55f368131ebce8f2b45d413321d7086dbb82e3ba'
    'it'
  end

  language 'ja' do
    sha256 '472db9e912ea394bc9255680c0a24ecbf646388d6f553e8231efe0eda39cd093'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '697a18ff9285f5bb188abe1b139554a81d40fb31277eb0b917aa9a34ecad764d'
    'nl'
  end

  language 'pl' do
    sha256 '3daac7cba62a969632af46b2b5c33b859d8c15191ec6b285d7e0eb97fe80e88b'
    'pl'
  end

  language 'pt' do
    sha256 '8a203e0391d9319037e597297f95d9860f800ee915bfcd653122a470487bfb38'
    'pt-PT'
  end

  language 'ru' do
    sha256 '81cb0e23e01cfd5d065fe6267fc9a631aba52e6549a47ec652fc41dbd850caca'
    'ru'
  end

  language 'uk' do
    sha256 '0d3d76f086a56f573b82523f0e0171f3ac7cdbcf8d971c2695d20a97656af348'
    'uk'
  end

  language 'zh-TW' do
    sha256 '92bd67a04bfc9a1dc8e62c33c00a301f2082e718ca2e3b50941341c1b86eab66'
    'zh-TW'
  end

  language 'zh' do
    sha256 '66a8401781432c625499e94ec5ca21ee81aa7b3e325206833a433c1637b9ec5f'
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
