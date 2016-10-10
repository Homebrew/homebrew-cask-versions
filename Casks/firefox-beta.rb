cask 'firefox-beta' do
  version '50.0b5'

  language 'de' do
    sha256 'b22f7e7524eb999637cc83d9828e65bbe63460a66761502e25b56a636168905b'
    'de'
  end

  language 'en-GB' do
    sha256 'bff170bdb8be4dd669bbab199a74929266cfc2207cd5234503a2d44e28aeb99d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '9f68324008c268cc45a972c8c5760ebf89ba49f95eb83a97d276a8b9ff93bf5a'
    'en-US'
  end

  language 'fr' do
    sha256 'ecb2a7b11f4612b5f0e74067127668afd41593fd518d5cc8e8422ce2fa5cd03d'
    'fr'
  end

  language 'gl' do
    sha256 '09edd1b9976a9e40eaf62b1ea86c8df968c5a02c15d69177753f57172d8d47dd'
    'gl'
  end

  language 'it' do
    sha256 '5f0f0a01cc36adcdb2d392c37b2b8c2362e614397c6a64c924b7e3d02615c13d'
    'it'
  end

  language 'ja' do
    sha256 '62a822aa77d82770acdf8dbc35245d8039e9e8724e7654b6e8f8b653ea8c7224'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '25306bcb327c2370ebe7f8652da0b9c84c878b6991600472deb20ab156600b2a'
    'nl'
  end

  language 'pl' do
    sha256 'd1d5c8ae449ceee91fe4ee683da0e082d053c10256af44a945db70b09432f8f0'
    'pl'
  end

  language 'pt' do
    sha256 'bd1392c056747e5e66b450979a815803e9ad5f9862bb2912537e76bb2253dcbe'
    'pt-PT'
  end

  language 'ru' do
    sha256 '7766c6a39a2d2b0a0ebf8f1c138275dc2e5b308765c2c0f96d286c96fad24068'
    'ru'
  end

  language 'uk' do
    sha256 'd654f8be4e0de57f2902f6d56988ddd9a548b23ebb9eea9a46b4fa5b3b3c5732'
    'uk'
  end

  language 'zh-TW' do
    sha256 '31bf770c94b5c4ac4df6c1da96c821ca0bafd4edaada9900e32abc86179e9efb'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd654f8be4e0de57f2902f6d56988ddd9a548b23ebb9eea9a46b4fa5b3b3c5732'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
