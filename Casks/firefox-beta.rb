cask 'firefox-beta' do
  version '52.0b4'

  language 'de' do
    sha256 'ac3717ab487e485919cceb2ecdcb80cd6f160c0c07d069ffa32fda43d76cd932'
    'de'
  end

  language 'en-GB' do
    sha256 '9b789e8252ad5a7a9a444513f04d4ae68aec65765e193438d190c6ee86f86d78'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '89240d3205026b0390764a6f601a5591835ac5d6faada3ecd4a0b392b83a8715'
    'en-US'
  end

  language 'fr' do
    sha256 '8e568ca74aea57b42c0edde6f0a1da9dd542991627cb19ce4b55c3c667e10e1e'
    'fr'
  end

  language 'gl' do
    sha256 'bc5c87525e5d08479369b03bba366977d6646a3ed68f0053b8a8592218fb3471'
    'gl'
  end

  language 'it' do
    sha256 '30412cbb77a39ec1dd4e2660758eb7b0870c5797128841a1131c6a0bccbe8748'
    'it'
  end

  language 'ja' do
    sha256 'ff08153fa0492574cff4b856754b127918513733cffb130073960dd7970713c2'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '6006d05361fc22d9f2e96e1b510a8f54d21766b1e399e8197dbcf949cb510e27'
    'nl'
  end

  language 'pl' do
    sha256 '61c4c3050d9f8e4b8afc84ed83f04a8d1916d24872d495007704e70a0444b992'
    'pl'
  end

  language 'pt' do
    sha256 'cfe6d59a8960fce1ff079318e089584b16c9dc5281e567d7796e209c65198bf0'
    'pt-PT'
  end

  language 'ru' do
    sha256 'e43748d5059261711e677cc692a77e0a3e6628941db177ec6fe8a26ee3f35fd0'
    'ru'
  end

  language 'uk' do
    sha256 '5d517ba67e8ef923a846a68f9bc8434f1c8c0823466a3fff239a6072ea64629d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '353664ce15def9a6acc378e830e13d50f8e6b9a25df5870b88ec79d452ae8318'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e00468bfc1943bc2e720793c1ee8a5b57859b807b1b2565528921b83a62efa5c'
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
