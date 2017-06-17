cask 'firefox-beta' do
  version '55.0b2'

  language 'cs' do
    sha256 '76f9dad8c41a305e5f424b5d9087efdba91e6dc2d43deaa5736c8a49aa7dc925'
    'cs'
  end

  language 'de' do
    sha256 '6e42bb71fe8e650c0219724311ecb8a6229ca16f51d51158066313c0d8ce1f94'
    'de'
  end

  language 'en-GB' do
    sha256 'a016b54640de64a06847ec28873aaaf581b526cab22f65c346835001aef0edfb'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2ef42f71185ad24f0f22c8e0b325829836c5bcf96e2c37da075ce5172bd5ce4c'
    'en-US'
  end

  language 'fr' do
    sha256 'a0db0943d23a9e0334a2126e65ede98326c4ac3165b1e0984b6de1878c39ac62'
    'fr'
  end

  language 'gl' do
    sha256 '31b7347d2d3dd271d70b6e3e1ac87483f3d8158867cb34814d52f666f0f12cd6'
    'gl'
  end

  language 'it' do
    sha256 '535c561374ca4d1f3daa845e46b37095b270a7ab51026e3c198e96ee892f6587'
    'it'
  end

  language 'ja' do
    sha256 '507100d6e2b2112cbcf23f1d06a5f7fc1c66cccfa599c40c9f9e6ce19f058483'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '9b3902670d647eb56bc0dd65efed21196e6ed88e5c37716fe49dbc17c67d7b3c'
    'nl'
  end

  language 'pl' do
    sha256 'd49fad36611d695342329fd552e5b212a3a5bfd681dca43f5bda56eb6aa47c21'
    'pl'
  end

  language 'pt' do
    sha256 'f85ae8f1e47cfaff3999686710bc6bd342dac319c4039a404aab4e4e3d6b9f5b'
    'pt-PT'
  end

  language 'ru' do
    sha256 '1f5371c1cda55de77c0269c275f4c8aaa4389411d6641d7579c92365ac45457a'
    'ru'
  end
  language 'uk' do
    sha256 '6d495aacb3d067e1b57711a9a3b4329c8c6280f92fa49e5b537e08883b36d070'
    'uk'
  end

  language 'zh-TW' do
    sha256 'af292fa0013dee9d36cefc4568dd6f8b1faf4a93cab125d6706765101819c265'
    'zh-TW'
  end

  language 'zh' do
    sha256 'a67d59d82aedf4e6fb92dd6664b4a01f672b5cf9eb2472c9069c5f20d9f077e6'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
