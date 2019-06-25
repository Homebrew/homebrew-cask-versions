cask 'firefox-esr' do
  version '60.7.2'

  language 'cs' do
    sha256 'e904d27e035d3d0863341c1c28a29f3a09af667e0cac1c72e7c628f062eeb1be'
    'cs'
  end

  language 'de' do
    sha256 '5d614be525b85018e12a833131e0cfd0c7848f4f3b754a034ea3171dbf546a70'
    'de'
  end

  language 'en-GB' do
    sha256 'f27c90849d27309a6826b36e4906ae0a0531954872c73b4d74ccb4eb1caba3ad'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e5bd91e385b30aa521bae362b309a8f117f5a55b2b0b63699860e070c94b9f45'
    'en-US'
  end

  language 'fr' do
    sha256 'aabbf1f68f622b6310febdfe1aa58ed21c2c17a1d0eca3ce3e3d5921e98ba18f'
    'fr'
  end

  language 'gl' do
    sha256 'c8c65961a1cc1dad5764ae751599c9edb245d4d4c62dc0a081c408897083e600'
    'gl'
  end

  language 'it' do
    sha256 'b280d83cb7a976d5f1d37fb79b04819d060234f2caf0282e295ddbeee229de97'
    'it'
  end

  language 'ja' do
    sha256 '7c7de492193f11408521fc6bcb91d156286fa977e7a01a537a6b220916b2f673'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '9d60f299003f68321346cfa8dbf7ea2a0ff079718e4524b0a1e08a93e7488086'
    'nl'
  end

  language 'pl' do
    sha256 '13fcfd90803a8c1f9e2be1f37d0bc875c0e143a993cbbb622262a3c38ed6d4b3'
    'pl'
  end

  language 'pt' do
    sha256 '06aaa8b3498fac231b3d3ecaa7f2529d891b77687b8fbde9e4afc6cbe84978c1'
    'pt-PT'
  end

  language 'ru' do
    sha256 '099bea8c9569cd27628bb979dc79c603ef039f572e3dbe1dff7b8050fc202f34'
    'ru'
  end

  language 'uk' do
    sha256 '04bc58118a82412641b65f9976073702c3aacea4e32e007f6f2bbf34124ec3e9'
    'uk'
  end

  language 'zh-TW' do
    sha256 'db436a0e94f0bcd7e6cac8cbeea44ce3f6b25f54d529e0439b74a45fbc5eff1e'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1cca42436a5e4d21daa9372442384ca5c0069016da3b819261f77ed527985eee'
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
