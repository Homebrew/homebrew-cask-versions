cask 'firefox-esr' do
  version '45.4.0'

  language 'en', default: true do
    sha256 '4e40d588b838709822bd3ccc1edbd13f055df8daf73d1024bcc6c9cbe07ef1e9'
    'en-US'
  end

  language 'ru' do
    sha256 '06a001fb135e78a92c23538db9bbc9111107676fc4dd17540b9af54cb09f5c97'
    'ru'
  end

  language 'uk' do
    sha256 '80914bfd90e2ac05da3c18ea77662f783b8e11786458bf68b215bf7961ad9629'
    'uk'
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
