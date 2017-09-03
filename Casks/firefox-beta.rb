cask 'firefox-beta' do
  version '56.0b8'

  language 'cs' do
    sha256 '4896eb529dade0208d051df8391a4b15fab695fd241ddf6ab96e579ecf013819'
    'cs'
  end

  language 'de' do
    sha256 '45884ba5e7d280b44beb2c60b7e55b1f50a0735b69a7d468ec75e1480f323c88'
    'de'
  end

  language 'en-GB' do
    sha256 '76da765f25e86cf3681dd7019f4ad0c34714c2b2d6f8ebbb81ce90affad6dd6b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b8ad53ea6ecbc6a17133d7f9af45f04cb8862dcec57a0643fa0eb30534ca6011'
    'en-US'
  end

  language 'fr' do
    sha256 '38f11e572d4fd746b15dad83d5e724f5db449539c8871612a33881fd9fe49aab'
    'fr'
  end

  language 'gl' do
    sha256 '244063282014b6cf65a9c4d477e2ce2775782da8495abf7eed3cfcca0a603613'
    'gl'
  end

  language 'it' do
    sha256 'c4731eeb821b47d8c1be54e5e3a7d1816055d57412ed36931651c7a27188ebc6'
    'it'
  end

  language 'ja' do
    sha256 '96cb266ff2654483642f4afd47e16360afbe4a5d8352318a7b7b6a0b31f85ce8'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '39a33ad86a49aebd4b8dec3a00e8511a56fd72da25d1e4b3efc96f1176760ae6'
    'nl'
  end

  language 'pl' do
    sha256 'e35a2b355ff5a796310597369107988e47ef46c31908be813b4f70891d87cc48'
    'pl'
  end

  language 'pt' do
    sha256 '217a2fd88c705787941afc8b58731de81469cb3d5e9fa3693d8d0f68dd8a71da'
    'pt-PT'
  end

  language 'ru' do
    sha256 '6f0846b20c931b29da825341594eea77e1252addc93097205535565917b4456b'
    'ru'
  end
  language 'uk' do
    sha256 '1f458f778c5f2c94ecc1b9bae9d4bbb60598ef445fe08e8f0f36ad50dedcb1c5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '10d13057c62005b15486833a919ee7421dd0242605f6f4dba597266bf40d113a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '1a242c193700f6196629a491a6c88d002463df6c7fbe7cc8ac2b08cca719d369'
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
