cask 'firefox-esr' do
  version '45.4.0'

  language 'de' do
    sha256 '6b5e9190f4255efb60ae5f9eba7b40744ffb0e5021d8a7042239684477474417'
    'de'
  end

  language 'en-GB' do
    sha256 '4b1b8b26a8677a64980bbc0668d2decc89f16c1db3137043e2a34bf8f7012441'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4e40d588b838709822bd3ccc1edbd13f055df8daf73d1024bcc6c9cbe07ef1e9'
    'en-US'
  end

  language 'fr' do
    sha256 '91e05b6eb00dd52bf5620a7e104b03290667150c348113ec0ab82dbbd717248d'
    'fr'
  end

  language 'gl' do
    sha256 '46ba273d24e6ae52fdf696ba9abc5fbcc5b02ac6ebdf8305ff48d02c080e153d'
    'gl'
  end

  language 'it' do
    sha256 'd7bac5431ff9bc1001be519d25fda2d825a1765058342a12316c64c06b5b7e88'
    'it'
  end

  language 'ja' do
    sha256 '3f9e47683f0da03e5a95280cfa7d38af142765913c918e02f9d51045b2306dca'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'f4dc4ab619f38e54819603439b4a0b9f63902d777c2b5320236064812a096f22'
    'nl'
  end

  language 'pl' do
    sha256 '091acf3a39af43b0661c856b5aff5ca37a7a5844e1ec0425c9af360eb4ee235b'
    'pl'
  end

  language 'pt' do
    sha256 'c604d400de41cb84bb64990349019bbd2a540fa58af314cbdd25b7019a8e0659'
    'pt-PT'
  end

  language 'ru' do
    sha256 '06a001fb135e78a92c23538db9bbc9111107676fc4dd17540b9af54cb09f5c97'
    'ru'
  end

  language 'uk' do
    sha256 '80914bfd90e2ac05da3c18ea77662f783b8e11786458bf68b215bf7961ad9629'
    'uk'
  end

  language 'zh-TW' do
    sha256 'be5918db0c77f998c8cd30c7937d9fecc1597413cb6a4aa5dd03e2f6eafb3d49'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6e3909b983a5a03452c3247b99976083e349c2410e8f223c7b812fbd95e33ea9'
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
