cask 'firefox-esr' do
  version '52.5.3'

  language 'cs' do
    sha256 '0a6dcf858fba89ce777e7285d0908b9af99970b7cfc7d4b1fd8464675cb961ce'
    'cs'
  end

  language 'de' do
    sha256 'aa3de146ca3da32347cee09288fe0f357946430967d053b11188231350296429'
    'de'
  end

  language 'en-GB' do
    sha256 '75c278339064c5ff884070e61b5c2d5e27b40632bd6ca1ca1e9da04b91959996'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4125a0c0eef0de35a6c90db7162ae64235457de9833ddda0e997081ebe40c234'
    'en-US'
  end

  language 'fr' do
    sha256 'def84beb287f29aedb24af0cc927c270e9f7c37175ea1beb3ae9f9ae399c07c5'
    'fr'
  end

  language 'gl' do
    sha256 '7606cac624a649e8b05a0204a3c9817e0725d405326cfb02c9f3f5ae43e13043'
    'gl'
  end

  language 'it' do
    sha256 'd64ae29b03193898cd4072c127a42518922ae9e9b349fe6ab54930fd74660a61'
    'it'
  end

  language 'ja' do
    sha256 '2756d549299cc624b39ea73560ae44a3233881cd795144448be9888bd31c77fd'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'fb498b7d0c9c99802b0d3dc25e39f0c4a1dcb3f8db6e1f011dab02e48e81e7d5'
    'nl'
  end

  language 'pl' do
    sha256 'f4aebbbd1122c7a575a26c814500d279651c5dd046e16da170386a193bdf0e24'
    'pl'
  end

  language 'pt' do
    sha256 'ba50c4a6a3b7d47e85a941d8937ed39b4c4c195b75b60868d022075eaed4afb3'
    'pt-PT'
  end

  language 'ru' do
    sha256 'ba7440537cdc6e379cb27ffbbc2a64b2f15035f5aed4525098571848f5e3c06c'
    'ru'
  end

  language 'uk' do
    sha256 '12aef695883972e5791913acbffaa5bfb3f65c05a4f21e930ab9f4f378165d82'
    'uk'
  end

  language 'zh-TW' do
    sha256 '93563aa858c3504b8d56ac480fa1aaeb3a864e8825f39d6628b6efa68aecdd69'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5356f9672c2d604cd25f04384bc63465bc535f6676a6797baa43e532bd963a22'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
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
