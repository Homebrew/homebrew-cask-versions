cask 'firefox-esr' do
  version '68.2.0'

  language 'cs' do
    sha256 '51b802afa1eec858f132d1bc9f21804e27501c4fa7f4b780169c913f223cf61f'
    'cs'
  end

  language 'de' do
    sha256 '3cf657e6a7fa39c983e06c320c662c1dbc413b221c78a9280efd624fd805feeb'
    'de'
  end

  language 'en-GB' do
    sha256 '653f7e96d94df932f47ee6283ff277c5441edda2e1fed898c49e841cd89c212d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '7e6b800f528288e3411fe58b3583772ba140587f9e020f2be437d9b5a7400233'
    'en-US'
  end

  language 'fr' do
    sha256 'b597d0ac68577cad5055924cdd28db4d245d4943a41528019308afe0a0d6f4f4'
    'fr'
  end

  language 'gl' do
    sha256 '5ba7f557736c8b0f3966bc827f6a6827483a48015f62e7d434d5805800b13e55'
    'gl'
  end

  language 'it' do
    sha256 'afbf946fee0a77e8ec37086615d3e41bed811f07adc67629b5d18e8063bf394d'
    'it'
  end

  language 'ja' do
    sha256 'b5aae13d65b8a956b8684319c280c2f77a8e26dfd254e2949d21e3a19c7e2418'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '56bd69f9ed937e4ffb51ea970a042d204f790849d17be97ed6dc104e619a4457'
    'nl'
  end

  language 'pl' do
    sha256 '188e99d2e207a625fcd658a1b1d12152d7b6f9af64b5be72e2e9085cfdc61d80'
    'pl'
  end

  language 'pt' do
    sha256 '9ee7896a27dd02b3463b2e9dd2c4840b76bf304ce122babfe03e836290bbb565'
    'pt-PT'
  end

  language 'ru' do
    sha256 'b3f115f7bee0dfc40e5e4efc5b8f4c81c2b5d45c2199ce14770c4d6923af3a38'
    'ru'
  end

  language 'uk' do
    sha256 '990a013353fa806f9d674c7a486260940abaec7e7f78cfce6413fac1770018e0'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0df3167bc78057467d26bc808a51ba1c9d729019aee823fba6c67a1b8826bbef'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7b271fe4e7afc27e424b792835d078976e65f032ce23c1211e97c33b51953e36'
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
