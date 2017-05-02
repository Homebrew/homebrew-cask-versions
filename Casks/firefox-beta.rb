cask 'firefox-beta' do
  version '54.0b4'

  language 'de' do
    sha256 'b8e5f7dc7db603b0aabd5a17264607816bb763e6d69c0b1809461d932d65a573'
    'de'
  end

  language 'en-GB' do
    sha256 '908d3eee9a04c4b0e418ff6bdbdd85eaab3efaa943f29dc317ee998daedc1fa6'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'de1e671e3a550dc7ff846ee514370635e611ae18bd00a4c6b2a56e1fcf65b2c7'
    'en-US'
  end

  language 'fr' do
    sha256 'da6b4eba3d5525227b578a2ea2cd727401d5a962ef92546f79c383639f319d5b'
    'fr'
  end

  language 'gl' do
    sha256 '7ad073e78ca794bf167c2e77721ddc2b555b5ab69ce76365fccc7ebc96761fb7'
    'gl'
  end

  language 'it' do
    sha256 '340545c954b45cf0cf09874bed650fa351790cbf67e1d91456a06abf9bf44eaf'
    'it'
  end

  language 'ja' do
    sha256 '39a7f253b660ca19dc0feb29459b5c60f79cda77e834ed46c8d05f4916436f91'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '08233c6a7adfc1eafc8439be84fc5236158ccfe9299b5da179f80e32a6a072fe'
    'nl'
  end

  language 'pl' do
    sha256 '0a9519c78e6c5fba66954501d1f3a309f2b557a1e722362a0193cc7e7d1dab8f'
    'pl'
  end

  language 'pt' do
    sha256 '5b718e527ba49fb2f5201ba9f9d2a4d41a4813928e75a3af04724ddd2eca4670'
    'pt-PT'
  end

  language 'ru' do
    sha256 '5235d35e77c68724c908590bb29f6785771c934335952982d9e447bee7bc9535'
    'ru'
  end

  language 'uk' do
    sha256 '2d7d5a45ebe196f64254c5cab4121796ecabfed218235e11b43a10186188b560'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a2ca7d623b40a9fa348fbd42ec52e6faa5881bde3fd57055fc2359844bcc8911'
    'zh-TW'
  end

  language 'zh' do
    sha256 'fe5252277d39531d8b232a875692c0dad4025f9a7dc2847203820ac00907a784'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
