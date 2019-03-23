cask 'firefox-esr' do
  version '60.6.1'

  language 'cs' do
    sha256 '51395a3bfde73fbd3593a0a626a2782d72bb7a0b550222eb45f16f15e5e3cfe7'
    'cs'
  end

  language 'de' do
    sha256 '2cf1d8e80dc5f648f37b1f3e217404f812b9f73d7803b7ca94929b3ccf8c1b0d'
    'de'
  end

  language 'en-GB' do
    sha256 'c94e514970ef61f2393415bac185b6a605245abd79eb4134f91467d6caa0cb15'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '15e9aea68428bb3941a0330c05ac3b39b59cc3a0a75e1f67c2921c8d881fa92e'
    'en-US'
  end

  language 'fr' do
    sha256 '5f8be88e683257095d44904891e8b769f8f08b448f0522e4b45e4e9b5c9aed39'
    'fr'
  end

  language 'gl' do
    sha256 'a09a08fdc2697e1a07d469d1ff54b50b1249ab0c1c2928e1b449cb93add2f7e8'
    'gl'
  end

  language 'it' do
    sha256 '36902eecc40fbe92013ba8f3b295a4b1b0dcfce13565335a63173a57414fb982'
    'it'
  end

  language 'ja' do
    sha256 '95a074310a2c595da88aca0cc229171f624e876d6ca5e391dc35a7acaed140f0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6b717793fe7e1c7a7435f21f86d8c323f2834c3408eb869c7c9cc39e0dd6f6ef'
    'nl'
  end

  language 'pl' do
    sha256 '92599949e24561206df72e62eb13fe8e471db58ca99ea213b7297fbbb3656e6f'
    'pl'
  end

  language 'pt' do
    sha256 '62a5844f38a2f6f040ce7104854f33c069ea28e40d698b53db13c52e09bb71c3'
    'pt-PT'
  end

  language 'ru' do
    sha256 '10548e6e59f4bb4a86fa026bb6a380b72fa9b256e95890c676522dc01f1fadee'
    'ru'
  end

  language 'uk' do
    sha256 '4f27f1a9a63644a9c9cd07ef9de5d45aae681c8996e0a63969423e9c43f6b45e'
    'uk'
  end

  language 'zh-TW' do
    sha256 'dbbe8bd5314dfe9d92520c0e20bd4aa620bf70f7ce58ffde1c7b1e03286f5431'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7385130dac7d7b1575e101a060c8ec1be2fc71e2c22c73ca6285b3adc8b6f44b'
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
