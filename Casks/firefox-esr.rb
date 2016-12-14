cask 'firefox-esr' do
  version '45.6.0'

  language 'de' do
    sha256 '71fde2a23acd00174808906b44514c5a96b9521ced23bb378c516b81837499d2'
    'de'
  end

  language 'en-GB' do
    sha256 '2f000f58b8c626ce070df3629559005ec31bd12f88372a28e1b82cb911a0465a'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'c5ab6a93fe7607a8ef1873335c3cc468a63d39df05f76e17421df87eda2d2f15'
    'en-US'
  end

  language 'fr' do
    sha256 'e0bdc5146fe45c7e611e17b90a2b309fb906a3a335febde91b14ef430aecc352'
    'fr'
  end

  language 'gl' do
    sha256 '0af0f6fb94b0d233635a258d1f180fec3344ea297332dd8044ff00f8b92c7cb9'
    'gl'
  end

  language 'it' do
    sha256 '58013e3657fc2c1e192b386215edf2b4fbc11f3d7da8e1c8ea0a3541bc127c7a'
    'it'
  end

  language 'ja' do
    sha256 'c25ff53081e25686b426d9d1e8c7e2621b433894f64b3bf476fc7a11ea501954'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '8445a0b4efa20b6875da450e46e10f2dd3ebefb233669dbcc4bf555eb73f9b93'
    'nl'
  end

  language 'pl' do
    sha256 '78d700e7534e5d21dce618f52aa8c516280c35b33fd7c8da76c514b5b7cc96ec'
    'pl'
  end

  language 'pt' do
    sha256 '01d3671bd3ce9e338caad2a7ac7edbaf46a42c19585b0f425f4353ed038e9d45'
    'pt-PT'
  end

  language 'ru' do
    sha256 '44ea920f98a8bde3d0018ca23135e0684c3928cbf782f4e4a60b411b33f4077e'
    'ru'
  end

  language 'uk' do
    sha256 'ba1a207afae24ca8426718d01728150430b00891f01416c754df0024dcc4a17e'
    'uk'
  end

  language 'zh-TW' do
    sha256 '743627c0bca2493e552bb120340854d61c915ebd9e5659c90d22c690fa1bac8c'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9bd68d2bff3d3be9109a3770eda80a21a466bd6c621e75f5fa37561077186191'
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
