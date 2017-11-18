cask 'firefox-beta' do
  version '57.0b8'

  language 'cs' do
    sha256 '6393c570d510c0a1af8fd828b935ee759b30230f69d1b7f83d8d73deda1b7f1e'
    'cs'
  end

  language 'de' do
    sha256 'bee3a0e0b76c6a3fc2f9d9618a7fb82040f7b5e47ab9c207798ab8742db47ada'
    'de'
  end

  language 'en-GB' do
    sha256 '047fe734dc5a4abc1f671086d92389c7d55277de3ed19e0bba36be27dc1dc9b7'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'bfa99993778bd94457d5a0733ba5b8407faeb98220f50451c9d4027b62f7c955'
    'en-US'
  end

  language 'es-AR' do
    sha256 'dacc5eab9aee54e47b34fe5ea533e399b7025ae1c58fb6b0754eef329bc39e52'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '0cc7b2bd555e7e08364b2ea0a7ac4ebb4599f5351a0e0bedeb3058dfe223ce8d'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '54045c8ec6a1c7816855adcdeaf293f34eb4fba4baa76c021b407677ea243aaa'
    'es-ES'
  end

  language 'fi' do
    sha256 '6ea75e5174ed1be6a9d87df7e2799a5a2ebe770871c539322e1c5d0327fb8b2e'
    'fi'
  end

  language 'fr' do
    sha256 'd86d15d915a95f4e2b723666be40f3b1063fc40cdf1b87c32f4df9eb8f8d6668'
    'fr'
  end

  language 'gl' do
    sha256 'b602823b7a88432166350e566ef9066b204a9aa83f9f1dd282a4662befb79f16'
    'gl'
  end

  language 'in' do
    sha256 '5f7cb40abeeb75e449ea975bbc29207854716c8efecf0b2bf50ebd3ee72a8225'
    'hi-IN'
  end

  language 'it' do
    sha256 '6a6d78e6711ca96f0e0c5b1b154ac9290820c8a408da144a861c70bd1efc6aea'
    'it'
  end

  language 'ja' do
    sha256 'a639eecef6db66daf6222a84cd9f6a554ef694d47217384320da891731063ceb'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a48df74cd85088bb2e6cd0a8c0d5b16e590d73038c3657dcaa2107502bfd0e87'
    'nl'
  end

  language 'pl' do
    sha256 '5affc87b19da7fb40992bd634acf82cd017d00433d00359f3f8242e2b841f898'
    'pl'
  end

  language 'pt-BR' do
    sha256 '8d1e6613aeea1906fa9dcad0fcf3b4baf78a46022348eb844bc047404d3d6d4b'
    'pt-BR'
  end

  language 'pt' do
    sha256 '62acbeb74e7c679cbcb27704105cef6ce5802e1fdeac4a7fd6219b0850c6ae84'
    'pt-PT'
  end

  language 'ru' do
    sha256 '873c95965f917745b70ce6d2a76c742adf56f88c0540524b1875d90a5d62a626'
    'ru'
  end

  language 'uk' do
    sha256 '743fe5c5820cdd62b008637a2308c53c5aa95f3a64655be083a79f5c1d4aed9d'
    'uk'
  end

  language 'zh-TW' do
    sha256 '93375078c41f8a135ac5968c6912a6199e539dd7c0961286bc0d1d94e4e8f9ba'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5a98659bfda3fb0feb4c67edf954d84278f15eb86905b5e53c3904c204a6f876'
    'zh-CN'
  end

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=#{language}"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#beta'

  auto_updates true

  app 'Firefox.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox',
               '~/Library/Preferences/org.mozilla.firefox.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', # May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
