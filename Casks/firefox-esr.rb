cask 'firefox-esr' do
  version '52.2.1'

  language 'cs' do
    sha256 'cf5d873f0c57ede9b8af0b34e8b08a84a062e28979ebb5620353fbb768053423'
    'cs'
  end

  language 'de' do
    sha256 'd0b6a28d5a5d5b26fe94e6d60a9b6d07f4ed8c8bee7e53dd5374ae6c8250f845'
    'de'
  end

  language 'en-GB' do
    sha256 '3de727139710d9dae3075fc13a74a2f43d9826f04c30a4857b6cc59c8fabf47f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4cba32486f9cdae8f3b22ac3d5d1e66ea66e061743217a3cef20d9e45808952e'
    'en-US'
  end

  language 'fr' do
    sha256 '93bb959327827523f885f35e5f69a18ab68cd87e524729f955bdbca094baad9a'
    'fr'
  end

  language 'gl' do
    sha256 '9ce98f0eb8441eebed9d598ba94a57a4b721bb9650ce3c6e4892eb4af8e5a708'
    'gl'
  end

  language 'it' do
    sha256 '6a71d2d52b3bcd7df7681ba5c8458a7a8d703df6f4e646a3eb30e4237d8db568'
    'it'
  end

  language 'ja' do
    sha256 '7375670c5780f7fb4bdc79214ff26de96c6eb58a0cd5d99ac339c7300aca71b1'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '5559febb9b8f3e189f34f79e7ecf3a68e9b6533c8611b789257efc811f723eaa'
    'nl'
  end

  language 'pl' do
    sha256 '05d9bbffa16d876e600249d5cecc13221ada37f57ad8c04361503019758c58e1'
    'pl'
  end

  language 'pt' do
    sha256 '2ead915c382f24c256cb6f5c17be320fb6bafaf37d7b3246679285523c6ba098'
    'pt-PT'
  end

  language 'ru' do
    sha256 '20d358d0c867ce63023b77628ed997c25c205eb9072d6e0652130ed2e63093fa'
    'ru'
  end

  language 'uk' do
    sha256 'a1e5ea4fd7ca9aac812b4a3352d00644f79a4f321b24cc05b8149ace78e8c113'
    'uk'
  end

  language 'zh-TW' do
    sha256 '389cc87012866d01b68307a47a78f52ca1de19c7ac86cd1a58256eb17a68e1c5'
    'zh-TW'
  end

  language 'zh' do
    sha256 '259c1a59b52893d7c13d5b53b408fcbba0003d79cca507cb4ed9471159c51e5a'
    'zh-CN'
  end

  url "https://ftp.mozilla.org/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
