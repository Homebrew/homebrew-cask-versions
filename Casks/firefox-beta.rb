cask 'firefox-beta' do
  version '53.0b6'

  language 'de' do
    sha256 '8fbf9cd279eddfb10bbe88e0755e86bd480d8c8c14f3bbc01b844bbacf315eda'
    'de'
  end

  language 'en-GB' do
    sha256 'eec84617da65d7115cd1c4a38887081b8ea7356d60480c5dfc3ec5fcc2cb0490'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e889d2f2d2b144338aacc351275e67116f3a1b038099065ac7650ff6b44474b6'
    'en-US'
  end

  language 'fr' do
    sha256 'f1a7297b43cf8c31c7872f9f2c6559096952dc12498dc9503ef537f8de53bf55'
    'fr'
  end

  language 'gl' do
    sha256 '3df5d978306682302155d664e671b12619661c38caba48822a6b544fc604d583'
    'gl'
  end

  language 'it' do
    sha256 'f62d4dde03035ac44fd96cf747d20e07b1a164e365b259274065abee4ae6c9fe'
    'it'
  end

  language 'ja' do
    sha256 'df6d6cdbbbd8b0a83e3cab593f27cce3c3fab4ee8619a7920106b4bbe506f762'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd713126a5d03d3d5e2a5eb53aa904a0937b88d88a0e3d78f9829357ec5bfc768'
    'nl'
  end

  language 'pl' do
    sha256 'bc677c9ba722a0b252874c84dead36177879962860dfbc8816b8a8b5c277bd5c'
    'pl'
  end

  language 'pt' do
    sha256 '79a1265232cebdb7af40395d0029fa062c9beacd1514243a9639837ac289bc89'
    'pt-PT'
  end

  language 'ru' do
    sha256 'e5f805d6e00a22eee146a70a8e14e3cefba68a7fc59f654fbda2296a8d9b2717'
    'ru'
  end

  language 'uk' do
    sha256 '41953a7d11d7f70ddd9fc82c2418a3bb2e89bbddc3678dc10d77641cc98b7015'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0fa633440120c9cfff7cabe1277a26f47a26c0d3a8b137bf14e9f3c1e9203137'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7c050254a0f1552f1f7246b79b87a30afab4e30c3bcb04e72d89ad83b55f4c78'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
