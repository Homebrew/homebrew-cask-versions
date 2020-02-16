cask 'firefox-esr' do
  version '68.5.0'

  language 'cs' do
    sha256 'f5dfe952caab8cd4e1e1a99dc20fd1a5a31d1cdcbbb4810448fc725b6ee6c523'
    'cs'
  end

  language 'de' do
    sha256 '69fc50270193237ecd8bf56461d3e20d93693d921774b557a749a3bf8d0637b9'
    'de'
  end

  language 'en-GB' do
    sha256 '4751ea27b4729fcd11c6dbd576485b9eae0ced929a5c45c73e9e0777b063401a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6f6eadededb0fd3e9b3e60138e42d4b464546cff2e528b139edd004a49297c9a'
    'en-US'
  end

  language 'fr' do
    sha256 '450e3dccdf85f4051ef5c4092a0dfc80844c1f0feda7b3a5ad29a46c7bb972c4'
    'fr'
  end

  language 'gl' do
    sha256 '37fb39c15a67dfab72d047e9798706c4edc3cc2dd24b819cc0d7c3108b14d64f'
    'gl'
  end

  language 'it' do
    sha256 '4c110e76c989214f7073e2a0f6cbe7be28e240526d3e2623f1515dd5cc664232'
    'it'
  end

  language 'ja' do
    sha256 'def7c916a178508adde2f2ca5886089ce029b7eacc6ac54de917ca9116a03ef4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'edb330ce5914a938b0f8b113cb34573a54bb1783c6b8e8a65d32c20aae9df37b'
    'nl'
  end

  language 'pl' do
    sha256 '26b2c2714757938ff19b97e98417dbc0705bc785f04ba4090c27c66f936ef418'
    'pl'
  end

  language 'pt' do
    sha256 '93b0419da7501df565fe1daec4ea0ff8f66c6f99c0ac94c20b67ab87b9ff98cf'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ab9110eb2de26c817f044455e3ab58a485b820d83493831c0ec1af804210eb42'
    'ru'
  end

  language 'uk' do
    sha256 '03f5662b2e8d3e75fc96c8ee90933e567c7a0d85c6c7d45b77f6db1d1b32e1be'
    'uk'
  end

  language 'zh-TW' do
    sha256 'cdf15a06d1a8f00022370f691df14b9f1def7bfbcca96aeb68a7d0fad32062c3'
    'zh-TW'
  end

  language 'zh' do
    sha256 '33edb9576c42dd89caf849026e7938a9caa8087015949e99dbd2054715af7717'
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
