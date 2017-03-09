cask 'firefox-beta' do
  version '53.0b1'

  language 'de' do
    sha256 'c0a9c210783899565830b2c4729ed5d15dcc0e95a0d7152333136d06e20b7f60'
    'de'
  end

  language 'en-GB' do
    sha256 '80a43f82de94bd7fe7a39e983d61c3610256b4da5ceb81397a3b45e7c082ed10'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '858aa5148efe2fd350f94aebc7defc909f8a82518c19935db4bb91b84bfa9908'
    'en-US'
  end

  language 'fr' do
    sha256 '2c58b9ae22e55b7c1130ec45e52fd2fc08e9f25216280bcf20725a5f89cd3dd0'
    'fr'
  end

  language 'gl' do
    sha256 'a53b30c851a3bbb4f233b8369292ae3d14d908b04b6ffac4fa29e8aaf5154751'
    'gl'
  end

  language 'it' do
    sha256 'f8e3cce781059ba1c0cd7db3d4768437c50c670f82592f084af8b5d11291a455'
    'it'
  end

  language 'ja' do
    sha256 'f9282776d26a475bb275171428a19c8276fb82c2fda4443adb6b9ab80d92fee4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '870437c8f2a6f4eceb48373fc03f5fd49b5fb30c265cf6a9b6ab097fdf047b5c'
    'nl'
  end

  language 'pl' do
    sha256 '356e8effbbb2e473340265c99f933627be858c3429cce69e94c7a63db231a57e'
    'pl'
  end

  language 'pt' do
    sha256 '8b4844592aabbe223337c13a441be764eab62633ea574e1b4638956196deba01'
    'pt-PT'
  end

  language 'ru' do
    sha256 '9ae08b6b63455ab66feeb3c6f457476600db58b34ade0925321606b40587a366'
    'ru'
  end

  language 'uk' do
    sha256 '460052e9d27de64800e8a5f92a002c3142b7f3ff24748b30984d4ed94f066a4d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7b6f8a25865ded065c7ae1d3f0c655567f2f4d435f8d4ba88961625c4afb4c51'
    'zh-TW'
  end

  language 'zh' do
    sha256 '765961e39f01d353e271bed431cf42f68fa760c1e0bfdf9e2882e65a7ccfa982'
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
