cask 'firefox-esr' do
  version '68.8.0'

  language 'cs' do
    sha256 'cd519b1182632906ce7ccf7ebe2462f97496ff9256341131ac377e56bb338832'
    'cs'
  end

  language 'de' do
    sha256 '783643a7998fc48a4014994f7ec61a150fd0c5d79b022b865c5b0d6f410b451a'
    'de'
  end

  language 'en-GB' do
    sha256 'f73732aecfbb3ebe97cb5afd7c35a35b71cfa234c67e8dee74626aa4c00f7e81'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '59961d9d27cb2d2f4751c543eb40c9b8feb76c5e3e2aa1900473b99263d52c35'
    'en-US'
  end

  language 'fr' do
    sha256 'fde699750a48ea8d36bd6a95b21336ac57871a1e1cf576ec3a28bd7b9d2602a6'
    'fr'
  end

  language 'gl' do
    sha256 'ed35e2a6949cbf9b1c397f8c08b5483a3edc59a085eff001493f067612fadab4'
    'gl'
  end

  language 'it' do
    sha256 'fbf4b03e88885d36a6852b15119a0a2b7e453d5f3377243fb372becec91fc5d2'
    'it'
  end

  language 'ja' do
    sha256 '82b8f9e6784b13fb5b699c5d2b21ea7ede2327f4829be8b55d1d06e58f1dc407'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '443340cf5077c4293583bc95343399215893af3178259ab81f43afc030435272'
    'nl'
  end

  language 'pl' do
    sha256 'b50b3b8ea7508df7dd162d9cbef2c3b163ff7f85cafb0c6141f524618ffe82e9'
    'pl'
  end

  language 'pt' do
    sha256 '37e856ac6a2a225924d8342e65d50e70488419730d3776de6bda45e85bda8d2b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '0e5be68edf60954f65e6833a35d7673ea807b2d4693b2dc66c22cea57fb25191'
    'ru'
  end

  language 'uk' do
    sha256 '5d44886e0c2548a3e2658d647934a098afa4e8e17824be31911871c05b0940a0'
    'uk'
  end

  language 'zh-TW' do
    sha256 '71f6389f8db783f2c793482980f46ab0ef5337c5fbbf8206687defeae339c683'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e20c86d159cfbcbd7e9dc608cf0f9a65b7d18bc8ba3eaa74faf0624f6913bdf7'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases/ was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-esr-latest-ssl%26os=osx'
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
