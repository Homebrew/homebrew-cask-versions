cask 'firefox-beta' do
  version '55.0b9'

  language 'cs' do
    sha256 'e48bd18be98fa2c57545ccf9dc845729637ab2c55d998d452fb168d1ee1d281b'
    'cs'
  end

  language 'de' do
    sha256 '5ef6219a92388a192488a3e105dd977d9f14c059d514356f223cc90090dd49a4'
    'de'
  end

  language 'en-GB' do
    sha256 '66d129e78c46ef330eaaff36c809e082d323c1df9350718ddf8b88ac0309db22'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f6609700d62d9953f11205a03f9ee3fb16230a85793be224c33c869d54d7ab64'
    'en-US'
  end

  language 'fr' do
    sha256 'caf212221e936ea27b8e38d838ce4a8ab24b22780452d5f749b9fbd5e04b2fe2'
    'fr'
  end

  language 'gl' do
    sha256 '247b2457894e3c0ccee4d2c06ea16b60378373a70b70e147cfdc3ce5ea3215e4'
    'gl'
  end

  language 'it' do
    sha256 'fb628bac19a9d725f83ccb1f0dc7025d8fde8310bb0e25eb8e66eb553ddae1ff'
    'it'
  end

  language 'ja' do
    sha256 'a8bcbef86586093f65baa186fe8f001211998af9e2ff680f61d9ffebf42673a2'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '7a9f37d766dd4e2b8474e43d4066fecea63a32cb0c792f5cde7b3d5bb686e059'
    'nl'
  end

  language 'pl' do
    sha256 '511bf2d6e37d452fe219e552907500b220da67f64ddb9f4b6356e3a67308fc23'
    'pl'
  end

  language 'pt' do
    sha256 'e244a76b3f2945f8a7c009960e88c5445e91db480b6ed6bcefb1fe6981c0b34a'
    'pt-PT'
  end

  language 'ru' do
    sha256 'a4d4f6d29c6509ea8e73035ebe9a51d4552bc6a996c32d8b1f669f5801438112'
    'ru'
  end
  language 'uk' do
    sha256 '5e9b2d8def40b6fb9cc9c8888cfb4d36b89f10f39c92e6332a995ab60aec55b1'
    'uk'
  end

  language 'zh-TW' do
    sha256 '63a52381583adcc5feddac686d9f38c8fb2073e74dfe37129d7fb1ccc392cedc'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9bc66e197f6fc6fdc7e741e72e39e56c37a60cd005f51ebf55526e377d28189b'
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
