cask 'firefox-beta' do
  version '54.0b6'

  language 'de' do
    sha256 '5777e9049438185f3a8dbb8fd7db3c79275d4b40dc090e483e43368d2ff1c177'
    'de'
  end

  language 'en-GB' do
    sha256 'b5c179f4838e2d829ae2dbb27207ea42d2c3a3b3dedeeab18e1bf2ebd3b810f3'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9df43b48d3d0b03f37b1c0c1b63f3ae6807e1ae10715b369a81ec72f153ad6d0'
    'en-US'
  end

  language 'fr' do
    sha256 '31123b497c0ebe91dce6b5dce676bae276953c5331149d3cf5aecbea9304008c'
    'fr'
  end

  language 'gl' do
    sha256 '203beb1a467e6e511513dd3804fd2023562ebe8a655123cd1787f1a0392d038d'
    'gl'
  end

  language 'it' do
    sha256 '17d04101dd227baec4e4eef7edff502304e53dda6973d99a8f9d36eb11bca073'
    'it'
  end

  language 'ja' do
    sha256 'b07c673e8e82d2de6e7bb101db5257db23c05cec2c164f39933e67dbd5e5e12c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ec5c86d85988e84c592801db7af0ae9f3a96652d4f23953004afe7334877505c'
    'nl'
  end

  language 'pl' do
    sha256 '8c6556751916ddfc3b69d63b4c0697d675d177adddf4066137922314a25c8128'
    'pl'
  end

  language 'pt' do
    sha256 '6d0f06b72a97e7ac7f2210c49b723f02e152e2e1419d87beb683a6e89295009d'
    'pt-PT'
  end

  language 'ru' do
    sha256 '27c453546232680a2041b472d500a2d1d7ddd17392c153cd7a77b1add59ec3f5'
    'ru'
  end
  language 'uk' do
    sha256 'db5315f1d636e4f34ebd9b6ed83939acce6fed2a00f1c4b5b529370851698012'
    'uk'
  end

  language 'zh-TW' do
    sha256 '0f5821ee907f61966516639dfc4410736368ceb00ea5c5c8becc3be1dc7756ab'
    'zh-TW'
  end

  language 'zh' do
    sha256 '58ccf8009e2b8cf446ce6fe30d93ea010e1cb4d63b17a83090a950c9bdb88905'
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
