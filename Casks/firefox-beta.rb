cask 'firefox-beta' do
  version '53.0b8'

  language 'de' do
    sha256 'ab87322c20ae0c0a1abedfb74ba11e756b2865894cd8d87da6b13ab08423fdcc'
    'de'
  end

  language 'en-GB' do
    sha256 '2f56b7c9f4a679cd92522e141115be45f81bbda448547b70b808ec29f3991778'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '85fa2aea9c93f01bcd4195fd0e8a56c5e3a41361032ee75c7df6211cfe38c0b1'
    'en-US'
  end

  language 'fr' do
    sha256 '2cb0d45d11b687a80c5ae20d922360f2105a1a39face479965860ae5e0338b82'
    'fr'
  end

  language 'gl' do
    sha256 'f9df40bf840b8d194d974c746cbc2a57d7c76418d67068eac933f73d4faf7533'
    'gl'
  end

  language 'it' do
    sha256 '4fdc1805eefca441fa35eeea48c6686e649e994f6077d31511d953b5d36c084f'
    'it'
  end

  language 'ja' do
    sha256 'd1034df4f7418bf07ff35f2abce71a821a6b2f98c1caaa587965112bd973ea6b'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '77b9c2690c76d0491e523e7e2c15e0e2e9c1620613736740201c7dfe86efcf48'
    'nl'
  end

  language 'pl' do
    sha256 '7ea2aea6899a26a87a8f7653830947c7ec7668be792210a43f53cef5d107fc54'
    'pl'
  end

  language 'pt' do
    sha256 '87fc0fc99b71a016fcc6edf724aa18e4b8cae6beec1d4bec28ee0d8ec5d0d587'
    'pt-PT'
  end

  language 'ru' do
    sha256 '33e14d2a9469d7665f559873008e838fcc70d05a09d02fc5337bfb9e01993738'
    'ru'
  end

  language 'uk' do
    sha256 'ab42da4506a5e174b6b92c8251e64233dc5a8b08c36e9dc3640e798f172e226e'
    'uk'
  end

  language 'zh-TW' do
    sha256 '137f878d0318e670c0705b755cfe38561ab4c687d683d96ad9ef5492be857c21'
    'zh-TW'
  end

  language 'zh' do
    sha256 '45ee9d3e64203f3c1587967e7d57a39396fc1cd7fc96a7e31ee75ce883a678f1'
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
