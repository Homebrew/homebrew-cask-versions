cask 'firefox-beta' do
  version '51.0b14'

  language 'de' do
    sha256 '7a6ac5ed6e246b21a33b523e51507b00092d8e15015bfda640cb38dfafd7374b'
    'de'
  end

  language 'en-GB' do
    sha256 'a75f284baf0e673f0d8f27615923520bc6eaa86356b807558c3cba45ae1b7188'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f1cca1f34c075691c987e2eea2a47228b8d043d92931d8d2f9daf90a569eb05f'
    'en-US'
  end

  language 'fr' do
    sha256 'd587ce173edb898b022f8c07b69103e77169976ab179fe8c7c9e61bd04c06dca'
    'fr'
  end

  language 'gl' do
    sha256 'b4f35e5b7f579cb619674450a02e24742dcb291cfeaa21184fa6e2eb5c50e290'
    'gl'
  end

  language 'it' do
    sha256 'de0a6f5600d4326c8938a39d77168e1a88f73dfcb30dcaad589d1506cce1473d'
    'it'
  end

  language 'ja' do
    sha256 '2eb8c642baa5c368f21415d81ebcafac259ec6772437ed22945cef57ac62fd07'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'd0d6270c8881d60600983aa60fa2b58200f9d1c38b49ecbd4ce777e2cf2645c4'
    'nl'
  end

  language 'pl' do
    sha256 'b20c5a69509d045d450392d6dca40abada7a6a21da0e869404962d1a6a54f363'
    'pl'
  end

  language 'pt' do
    sha256 '4aa35aea7ce1ec33cafd05b3ec454537fc83faa83e3964045e95ff338d4f897c'
    'pt-PT'
  end

  language 'ru' do
    sha256 '2750d96e874e83713e98b2ec0a24802c7a6d872b582f6b1d8ea7a55ebabc2b76'
    'ru'
  end

  language 'uk' do
    sha256 'cc4ddf6c1f2fad122ce6dfd2383391f80728aff9f53b1c4e82da5fa8650f76a0'
    'uk'
  end

  language 'zh-TW' do
    sha256 'e1ca9a0dbc1caa1b6f2ecdc62837be4d4019fe7ae62cdca9b9b31f3c6ddd5ab6'
    'zh-TW'
  end

  language 'zh' do
    sha256 '4a77768f01632bdafcecd969be3009fe7dfa035a5277d05549eceeb77f7970b8'
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
