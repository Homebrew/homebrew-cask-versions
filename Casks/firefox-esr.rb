cask 'firefox-esr' do
  version '60.6.2'

  language 'cs' do
    sha256 'c8b7d987ca2ab4b75427ed500e0577d2ac8e5569d52463cf1e5ca290c14f8424'
    'cs'
  end

  language 'de' do
    sha256 'ca5540dfa97475f5628e487316029693e74f68f8983bdc7c5f750fce26c9ffe5'
    'de'
  end

  language 'en-GB' do
    sha256 '1eae30a5545b66495132c08410fa7659713e627e20d62e54ce56ccc6978e6c05'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'dbeb0403e9a35ceabf509bbcb8a4e1d049703e481133120b72d3ce3ff4b0d6d2'
    'en-US'
  end

  language 'fr' do
    sha256 'bb679a2800c1cc78e54e325e21d49d9949cd7bf7a3341429ee35b44f54ba8978'
    'fr'
  end

  language 'gl' do
    sha256 'e6709c1d5c4c27a173f5844265e3e09cb5f3e3ae3caadaa1658b65f79b134bae'
    'gl'
  end

  language 'it' do
    sha256 '3a9df2a1ffd68574becd08bf377b3e45c37b8e6db16de2019713b4df74d57dc2'
    'it'
  end

  language 'ja' do
    sha256 'ca045ed88e3dc7456a62d81b75f1cae0db7bacde9ffb7cd1c26681e3cb45a4f3'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '814643a9c94c401bf8933853b411704dc1dba6225cf2c2434cc5e70b8c6bc515'
    'nl'
  end

  language 'pl' do
    sha256 '06bd13f3d89edcec76bbb125b18bff17da15b4994046d3390ee3e583853ffc1a'
    'pl'
  end

  language 'pt' do
    sha256 'd36b94fb5214fcaf3fb5d1e0b64eb21fcf72095b9b03250c1c85acf27b4f40c5'
    'pt-PT'
  end

  language 'ru' do
    sha256 'f73606c5555a9ce94aca93b9eee46ed0ee85b6dffb3929c88c97eb694d4db3d7'
    'ru'
  end

  language 'uk' do
    sha256 '5e7a9e5f067b6247f6c9fdb8e93f570efbba49cf6ca9a2cdb57f64facf1acd0d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2b3fd625408fbf24e811edf9e281ee0b02fb4eeb5cfd058962fcdf9fcca130b8'
    'zh-TW'
  end

  language 'zh' do
    sha256 '564cc58bc0f832632261330afa28f92d21bc770d44de5d4942d894b796d94d22'
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
