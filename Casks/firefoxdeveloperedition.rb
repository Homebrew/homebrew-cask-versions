cask 'firefoxdeveloperedition' do
  version '57.0b2'

  language 'cs' do
    sha256 '8d78fc7cc9ef189854fa15cac41ef6ff83c373a262a2d5017f4ab59cfc841b61'
    'cs'
  end

  language 'de' do
    sha256 '1ef0d3beb41d42e1fece1f68987454c4317319591612e440659e34b5758b2add'
    'de'
  end

  language 'en', default: true do
    sha256 '5386f16f6b0b39ed0a54142994004a638139ae5d464ce08903bc0d710fac5c16'
    'en-US'
  end

  language 'ja' do
    sha256 '96c071dca60289c84cc9316a083b6f40eda06bd7bc84c93a42388302de3f0c5e'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 'ddfe548f4b7696e670087f18a5c1474028f05526e279b8b63d87bd73d0337034'
    'ru'
  end

  language 'uk' do
    sha256 '6f212cd8c9c4bb50113652ccb1de43b86e55c26bf77dd7c51885b2bbf19d1df0'
    'uk'
  end

  language 'zh-TW' do
    sha256 'b3025f85e12c0e173678fe9691c4d464e8b90b6da17567db975bfdf2d2b30ef9'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a31c8ae8bd2f7b7690afead286e3cd97b8c0ae77f4560c10cb10ebfebec76dec'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: 'f4d84144b72ab0ae3bafd1bb92039bd2f2c338091a6c98d0bed1ed50fa84bc1b'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
