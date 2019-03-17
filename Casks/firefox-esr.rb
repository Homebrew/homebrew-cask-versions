cask 'firefox-esr' do
  version '60.5.2'

  language 'cs' do
    sha256 '33e609b64480ecd8393d5f626f69abc37c27fcd6767de36c833b1f9ff4385b6d'
    'cs'
  end

  language 'de' do
    sha256 'f3f9a2f504c1bdd33bd90d5d45952ff6aeb8111f2676feea5fbd9248e0146ee2'
    'de'
  end

  language 'en-GB' do
    sha256 '12da8e80b98c8f7047725c727b91269e066b35eb618e3cdffedddc5725602a12'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e494fbaee988f5bb0cdeedd40e2024d5b385d2e55dbc7639d2f0192358f6069d'
    'en-US'
  end

  language 'fr' do
    sha256 'da440821de2e7969e2ae9b43a430d2c10f325aded5bbfeda76f210abd3d28b14'
    'fr'
  end

  language 'gl' do
    sha256 '88034da2dfcda8f19e944de6a6703ca22075501281e19e35d35c545465693cce'
    'gl'
  end

  language 'it' do
    sha256 '86f87ea285ceae0e8145f202795d8ad66f9fa4380d7e2cb96bab27adc972d134'
    'it'
  end

  language 'ja' do
    sha256 '13255ab120a04facf654f6952b3c99338097a823263c51753e1326f1bc0c9a2c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8cfa10e53e2b27d1f55691010b9b16c6382af23cc6360307f7ea044e536e8b77'
    'nl'
  end

  language 'pl' do
    sha256 '794fa8fa6fd305fc1d088782df2bbb6ef19c6211377cd984f3890d845c48e1d7'
    'pl'
  end

  language 'pt' do
    sha256 'f4ab9ad699732e7d4108dad687ccbb92f2cf72ae7af0dbbef99a1e8116898fc6'
    'pt-PT'
  end

  language 'ru' do
    sha256 '33bfbc8bff889a37b156492c66fe5fb5779b3937f059d707e76874a035b614f7'
    'ru'
  end

  language 'uk' do
    sha256 '64710b2fef2e1da072f6b3b17f8f5246b2facaeedab2f0dfe5c1c6e17110f17b'
    'uk'
  end

  language 'zh-TW' do
    sha256 '3632836f809704f1d183a5d2e47966fd745d83c64b98896b56ebead3b0a6c768'
    'zh-TW'
  end

  language 'zh' do
    sha256 '98e819fc577726ebc426a4ef2334dfdbd45553631548d283898689b5f4b4fd48'
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
