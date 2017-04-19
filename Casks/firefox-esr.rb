cask 'firefox-esr' do
  version '52.0.2'

  language 'de' do
    sha256 'adfec7c94c3902b52ffdc39215ea1e3b800c326ef54ff1772f138897e4bfc855'
    'de'
  end

  language 'en-GB' do
    sha256 'ce755a5af2af13cf38c304bce239c283e5df4eb3d5fe2c32b9a8545e58a56c7b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'da55069ffb3a5f5ff109b37ee626a9893dd819b242a4fcc4fdb0463a6eed0169'
    'en-US'
  end

  language 'fr' do
    sha256 '8fdacb41154d0926dc3653c25ef95dccf9b271518c7d1ef77cce2666b2e397b8'
    'fr'
  end

  language 'gl' do
    sha256 'b498b35eadaae1c9ac2feb0c9fb41cea482e68dcf19ed9b88c1be08778f5e8a4'
    'gl'
  end

  language 'it' do
    sha256 '9582a2c48628d55c89cbf77f1af86157cd898f9781c8807b508f663782220048'
    'it'
  end

  language 'ja' do
    sha256 'cf52d2bf7c4b7d782e6014c1a4b93e5617f73be19be0b3fb9059788a6fcb0f50'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'c65d400181c41b563ee68ba2b39532182b74b6b474ae149acd8f751d91fe1043'
    'nl'
  end

  language 'pl' do
    sha256 '922a19be0069052dd16f2bdffed6cbe246a889b9912c092726db0836f29ea634'
    'pl'
  end

  language 'pt' do
    sha256 'bf4a7eaeaca63812181c8ccec83e88e7d3d2a5fdc32f65c26e3721fdfedc6ff7'
    'pt-PT'
  end

  language 'ru' do
    sha256 '8eb58788942f82623a45f9f9cb87f1bee414dad1184cfc0a381cffe42953c560'
    'ru'
  end

  language 'uk' do
    sha256 'bc1da6a1b6cf39707819a8a96a0ac952175be8d232e1e9961c92ed88d7116580'
    'uk'
  end

  language 'zh-TW' do
    sha256 'f5d94e08fa739fb342ccf4c1bffbfd44f8bbdb74dd3a020f36a9e6953839e54a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3c38650dc9376ad3af2c3cffaee6bb99d2851ecff99d9eecf3f80560cda93ffe'
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
