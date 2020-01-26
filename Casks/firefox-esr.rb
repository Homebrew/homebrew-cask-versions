cask 'firefox-esr' do
  version '68.4.2'

  language 'cs' do
    sha256 '0c6cb85d28b50fc3aa7d92a7e2c0b68b08fe78d6761b4167bac6ee236681419d'
    'cs'
  end

  language 'de' do
    sha256 '721e45d47126717229941e2f7ccb0926fe4a893960566af2506526c48fdba03f'
    'de'
  end

  language 'en-GB' do
    sha256 '238f1b10d2e7b45293462d0c1f801d1123cd5705e4b9f7b0a7b135a8a6d367fb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '3318b335a6b5e5cb140de4aeb8f6c197276c85fcd2a5774ed2759d445b4eaced'
    'en-US'
  end

  language 'fr' do
    sha256 '224fd6aba2dee59ca4e21cc133c89fa4b6eaaaf00939a56b896fb25c48feb3bc'
    'fr'
  end

  language 'gl' do
    sha256 'd47e1d30d34fc18daccac11189265ee163d329f75a89d442e7b7520d906a91c4'
    'gl'
  end

  language 'it' do
    sha256 '7f3153871247a89c091279a8582fff12a885e1110d92ad136d22f6dd9a705a9a'
    'it'
  end

  language 'ja' do
    sha256 'bfb2b09653e1ccead869eb4d42a6fc7dfa866416f4f7d5f52a4dc2b4d1b06209'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'bf0db6d25d64f5442dc31fdccbf16a118b11204897f25afa90165901ce1410c0'
    'nl'
  end

  language 'pl' do
    sha256 '7d667d22271c5b796bdad1b781cd6b5f3f2ed9a1ba0c3c8121ed4cf861e466f4'
    'pl'
  end

  language 'pt' do
    sha256 '8e2d7886881ad10f6701d210d501d84880ad64ebe0cd9534178e9cacb2c2349c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '91eb5b795cc2a8172635280d1f4ccc4b5f2dc019a0a79b0402bba54606254d55'
    'ru'
  end

  language 'uk' do
    sha256 '74948df778d0450b4d813b4271ddcd25c18d1fdfbc02ae5ab115d83ee64c2814'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3769d561472f516bbb821e3d5cac3ff85ddcc3933fbbed9e345f03f28e1b7e72'
    'zh-TW'
  end

  language 'zh' do
    sha256 '73b0aa6280f080df39d01b33b4048a7c6ee29b3db8b7b8fd80ce92f16a2d3549'
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
