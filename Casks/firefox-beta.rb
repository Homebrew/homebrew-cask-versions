cask 'firefox-beta' do
  version '53.0b7'

  language 'de' do
    sha256 '1b59ee866e2626ec27d11ba71c2a991820bedcbbd28151619e8f2412621904c2'
    'de'
  end

  language 'en-GB' do
    sha256 '62041224372f1c0964664bfd330a53c788800245753866fe49bb7ab408188de8'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'e3d8e569c89053fa3c6dd18547ffdc131cc126a7244358dcadcc51552af0af49'
    'en-US'
  end

  language 'fr' do
    sha256 '48f25934f2d09b29d30abcf94599d418f04394c8477cb2dea2ba2bd496ab124d'
    'fr'
  end

  language 'gl' do
    sha256 'aafdecd953a9dccc9d8eb7b97daa9973c0e00b32ddd30865195abefc09e3a301'
    'gl'
  end

  language 'it' do
    sha256 '25b17c91605966b6bfda9b84408adf7dfe955b78df9f7387a6cca3795c071eef'
    'it'
  end

  language 'ja' do
    sha256 'be3997b51ee67e29d1be49a12556660186f9e256a9a83f22f724cd4ace4d668c'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'ad560f154751eea2ab088787afb7d9044ae6ba4b76c52026903e18d693538122'
    'nl'
  end

  language 'pl' do
    sha256 'ad5c93cdc8d64e8f16393579a95d4d446103394dd4fe551f38aebc3b8df8cb8f'
    'pl'
  end

  language 'pt' do
    sha256 'c84053e7772d6bf7c18a13bf6975f49802535698ba657f71dae22a082effa8b1'
    'pt-PT'
  end

  language 'ru' do
    sha256 'd799e27b8a2f3a892ba9dc5b8b9116461b675aa5430f520368b7e0a2bb75255a'
    'ru'
  end

  language 'uk' do
    sha256 '66079a677e971d415c5975bfab6fc534580227d8149aec0d71fd6c8ef26ab66c'
    'uk'
  end

  language 'zh-TW' do
    sha256 'a396c4870b90a31035f8fb4382afc6fe8a3c8c81557af0bca56f56fc64b8b17a'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f2f4ea589c4d6a2bd065b6f3b177b50b97366d1e2a1723fde71b07717250f904'
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
