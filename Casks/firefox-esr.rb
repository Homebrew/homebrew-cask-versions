cask 'firefox-esr' do
  version '60.6.0'

  language 'cs' do
    sha256 '5e61776181169aa2baec72bc95be4682f0e02ab9f05a01a0cea99a4ec65a5913'
    'cs'
  end

  language 'de' do
    sha256 'a64d1ff9a97cbcce8b96d6d2831660b60bc1ef587619e47e64a8d75aeee3f67d'
    'de'
  end

  language 'en-GB' do
    sha256 '7b522275a69be8cb9bba32c9e3e5beba3b9a2015dacc4caabc2b1ef45dfe2546'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9d95386a6ec0d4f1ecf408bb913dc49d40df7e92debd28a7f42ad1351661e82a'
    'en-US'
  end

  language 'fr' do
    sha256 '127bcd53edc9593e4a61a7bebf1aa5a0d551bb63079004b02338739657ef712d'
    'fr'
  end

  language 'gl' do
    sha256 'c2e5a2906227469858a64c246a6939054cb6a09bff2d7f36b4bf71f96e1262c4'
    'gl'
  end

  language 'it' do
    sha256 '974dbb1aa45d8f1b76c6e32d09fd6ba4cefc7f5f5635f984c1c5879a66426bf2'
    'it'
  end

  language 'ja' do
    sha256 'd5eae331d50ba1d2f417b483638317454b5cace5990c9189879cdf9007c28cbe'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '182ca861b7379ce812810f0b26970896544c8ce9d7bddb889504505eaebc017e'
    'nl'
  end

  language 'pl' do
    sha256 '2456181fe1a28dd9cbbfb42bff48ddf766d8f2f209bd6ccb31a6d406f5837f09'
    'pl'
  end

  language 'pt' do
    sha256 '54415605cdd6a8cf2c34a886630b0e1aa130966900db2129b0d7548fc3f50b1d'
    'pt-PT'
  end

  language 'ru' do
    sha256 '44e89fd92a28f3bd59b97ef48db20d53a142c87c6704d87d24e362f635bfba34'
    'ru'
  end

  language 'uk' do
    sha256 '793c1c0e7a0bb2aaffe1714ba5ebd249e026d3af29915e3b22208940f73d9535'
    'uk'
  end

  language 'zh-TW' do
    sha256 '5603f1a3bba65aa9c4a4e772e9edf53289f7b0904d6a24266e7e183f4812cd82'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd4dd815ec128e312974ba1eb1e74102dbdd312068e1def20e607c48df18ecb89'
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
