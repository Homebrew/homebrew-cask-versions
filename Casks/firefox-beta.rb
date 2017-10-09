cask 'firefox-beta' do
  version '57.0b6'

  language 'cs' do
    sha256 '9355d4c089ea37e86af02d9b79b130ec19e6b543832ce851e7e769fbd255eba6'
    'cs'
  end

  language 'de' do
    sha256 'a98a34765a0258b2fb6710523e4ef180121907a1c3887c3f3aa9e5cb609f51d1'
    'de'
  end

  language 'en-GB' do
    sha256 '342dd0e69806b5951c509eaa3fd9fa9dcf5e1c3926a47d94949f8730b6197a62'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ba14ecdcefc10d3fe6fdf4ec21391601d3893abff3bba16cd93c32dacd1fd030'
    'en-US'
  end

  language 'es-AR' do
    sha256 '3219dfe823d9d455bcffa630e6451d8c6921faac3433df873ce1a673d06e1eab'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '6ffdcbd27b74bffb308eea24f914a0a1d12936ecbfe60f50e6ba77c966798517'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'e012338e48758fd3b62fd94fa1d121e602f72fc09d66792560d050a7c845d352'
    'es-ES'
  end

  language 'fi' do
    sha256 'ff97f59c392f15baa0eb4de8d1bbab05f60987e7321c028f5aec31119db74da5'
    'fi'
  end

  language 'fr' do
    sha256 '787321ad41555b96a96b0fcf94cec13c263a9b227d849b3912e02539048bf5e8'
    'fr'
  end

  language 'gl' do
    sha256 'ef145d62a941489f6beae0d0e921f4adcd45988ad1cbb21a7533e0f9852f5495'
    'gl'
  end

  language 'in' do
    sha256 '80a7fc38f2190dfef583dcf74f0dd4d552801e3732822f8a4c6746ac97d05a4b'
    'hi-IN'
  end

  language 'it' do
    sha256 'f07581bebf840ef0ec584768e6e46ee3bddd20477d8b20c3f4e323022df0c252'
    'it'
  end

  language 'ja' do
    sha256 '3a346ba1114c5feb48a5faa1029f0d597c2e667bc476786691b260594cb22ad4'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'b0e1c30171fd4eb302425b13e942f60aedb83fec6375949c6e7970ccc8e82da1'
    'nl'
  end

  language 'pl' do
    sha256 '113c1bbb76caa4646b31c1ec73b037aa8e4fe6844d69f9038b10f81a25ac78f0'
    'pl'
  end

  language 'pt-BR' do
    sha256 '66025bc152a20a3dbd1cf8e17566b432689375b69b26a26c116ef78c6adfb6c3'
    'pt-BR'
  end

  language 'pt' do
    sha256 '11982927f9d306d441ccdb92c73b00085c563e81bb1d302923bf0dafb2f2d247'
    'pt-PT'
  end

  language 'ru' do
    sha256 'c652337cb709d3d5fdb6dc704ca915faaca7ff7c63e3e2b7bbc2f4eefed2ee19'
    'ru'
  end

  language 'uk' do
    sha256 'bfb8b151981d2adb5d6301f98d4fcfbb9f58f4894c3108bcb1cdf6ea16419b1c'
    'uk'
  end

  language 'zh' do
    sha256 '75dce8aa47531a8321392c4524b4af06b3a5e767c8a6e4ec78da0d9d634957ea'
    'zh-CN'
  end

  language 'zh-TW' do
    sha256 'd72ee8a86c7294de18465b1dac0f21d954c5c20791d5ee63120fdaa9efb3ae63'
    'zh-TW'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap delete: [
                '/Library/Logs/DiagnosticReports/firefox_*',
                '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl',
                '~/Library/Caches/Firefox',
                '~/Library/Caches/Mozilla/updates/Applications/Firefox',
              ],
      trash:  [
                '~/Library/Application Support/Firefox',
                '~/Library/Preferences/org.mozilla.firefox.plist',
              ],
      rmdir:  [
                '~/Library/Application Support/Mozilla', #  Don't trash, may also contain non-Firefox data
                '~/Library/Caches/Mozilla/updates/Applications',
                '~/Library/Caches/Mozilla/updates',
                '~/Library/Caches/Mozilla',
              ]
end
