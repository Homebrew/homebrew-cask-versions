cask 'firefox-esr' do
  version '68.7.0'

  language 'cs' do
    sha256 '3e80e5863ef3c5ca9db30ead10fce38eeeb7b2a305557a7ed03f8621a8a5e60e'
    'cs'
  end

  language 'de' do
    sha256 '3c9aee42b9c8ceb824e3e27b53604428605f3cb69654f50f335b3b6d346bc9d8'
    'de'
  end

  language 'en-GB' do
    sha256 '32f1eeb9f9bf08cc80258f454e9e9ab0f8b22c4b803cfe944ce6482aa681e61f'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f55cfd62ba7f4795a2354160efe842d7aced9def75bbd4ad65afd00399042e74'
    'en-US'
  end

  language 'fr' do
    sha256 '7b89d5dcc237e7b593561829da0c16bccad65e910b94d7ade6499e07483c3658'
    'fr'
  end

  language 'gl' do
    sha256 '3b15719398e1f28e9920eccce106e0253b391585ae36719d8849f451ad60f243'
    'gl'
  end

  language 'it' do
    sha256 '29a951ab7f9150d97bf35c36f354669f3fa8dc23af65deb2b16479c333eeda11'
    'it'
  end

  language 'ja' do
    sha256 '832231c31d101361351aa6e856f3a75bdd51ef4346d610d02417674037d2307b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '396864a039c7616e8e9d0b7a6beae5ab5625d24f7fed029857397ced5fbd6fc2'
    'nl'
  end

  language 'pl' do
    sha256 '035fa571e684806f872398bf3cb46692b7240aabe916505b4a442330e8d94674'
    'pl'
  end

  language 'pt' do
    sha256 'e92948865cb5f6ee519aaa9a57e0de33a783e332d222d4b96940de65fa1f89d5'
    'pt-PT'
  end

  language 'ru' do
    sha256 '07c752aa3bde280e80bf039b96e37d30420ed51675d5696ab222a4b61b9f2006'
    'ru'
  end

  language 'uk' do
    sha256 '82115f28a990b6f0cb7ce4b5f9be9a25ccdc13f9be401d24ff78cf38cf5598c7'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9d50dd3422251d2da7933359e52c37d8dacccbb683540d4acce68849ee50ac2e'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b8f1f49af25fc227fa13db5c4833e6a35e746065bb9b9e4a936cf788037518b1'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
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
