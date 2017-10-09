cask 'firefox-beta' do
  version '57.0b3'

  language 'cs' do
    sha256 'ee640f3368493be184602094426cce3988e7481aec49d2be612f92bb0248a18f'
    'cs'
  end

  language 'de' do
    sha256 '6536530ecedf77309514b82a72784d51f0a864e816deb0204245908ed5d7601f'
    'de'
  end

  language 'en-GB' do
    sha256 'd39cb99e020c9e2ca3babea9a39ae93b1f93831cd9d327abb39d6a2cc34ac59d'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'b14ab4f3956167ab5e77d76285d0fe753a83b32ce463de04705df6b7a24c6f51'
    'en-US'
  end

  language 'fr' do
    sha256 'f9c2972dafad4ae61091beb737ae64de38c591768b2baea69e5d368b90818650'
    'fr'
  end

  language 'gl' do
    sha256 '9aa4ee82335ab9d5c130ccf42e04c691b6dfb379d81ded8ae828a1742c90922d'
    'gl'
  end

  language 'it' do
    sha256 'e26db49cd05fab39fd4755571eb96704697acc97780b8cb6958e8a80a234ef88'
    'it'
  end

  language 'ja' do
    sha256 '7f7121a52adb21cc1ec759e0be862c939fc2d7a46ab66bc5fa3eca947db22baf'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '4097c1784b189f4f7b5a2d069704fce887eeb5fc0b14db6825fa5153f22518cc'
    'nl'
  end

  language 'pl' do
    sha256 'b09d72e7fcfed42227776f5fc66711c47f977ce35264a87717869992a3f92c97'
    'pl'
  end

  language 'pt' do
    sha256 '6d53be9110d0fe0ccf0cc37d631be7f02246c12b6bf7d49d0c15816097185499'
    'pt-PT'
  end

  language 'ru' do
    sha256 '70debe5bb1dac27a0fe77a49cc68faf0219bb4e66b9199a51fbf47652f11e7f0'
    'ru'
  end

  language 'uk' do
    sha256 '05430c0ac662772f64e902e19fb2a81d1f722e50b9b2789c68efaa8b21c1a5c3'
    'uk'
  end

  language 'zh-TW' do
    sha256 'c4ebda9a4750e28e3312feaae4bd43b5ead743b92054708b95468ac787d8354d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'b0241ce3cdb7adad535739517db18cfce7d1ec5f412a4c75e12ac75524ea7c42'
    'zh-CN'
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
