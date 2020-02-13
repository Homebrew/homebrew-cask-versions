cask 'firefox-developer-edition' do
  version '74.0b2'

  language 'cs' do
    sha256 '080e8226c8e65bfe6265d56a17b7eb3c0649d909be45e13cb17bb2d1ffd7a5f2'
    'cs'
  end

  language 'de' do
    sha256 '5ad73628474e86c241ca826e153a83fff0061d302eceb7b5a0b9fed4c9a7ac99'
    'de'
  end

  language 'en-GB' do
    sha256 'f76f7ed69d69f13b0f10d68cd7bbd27ad8a946ce8777dfda3fc8bc6fbf1d1c49'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'f3088502ded29256bfee8e01860c8204409c92723db565e22476b9fdcf914677'
    'en-US'
  end

  language 'eo' do
    sha256 '7dc3e0b104d71c089ec4eb8611054591b39966fee4dfd08c6eaf8e8002d48510'
    'eo'
  end

  language 'es-AR' do
    sha256 '4afb021191f07278927274cf384d838a3536c458211b94585aa8e29026e3602b'
    'es-AR'
  end

  language 'es-CL' do
    sha256 'f5a3a509336167191b3529fc69719067ebed9a92bc89992a7e5126b97e43c202'
    'es-CL'
  end

  language 'es-ES' do
    sha256 'f9539eb5ac4bb450c91fdf4637b6dfe00760d6bc6a5a0be23123a7fe29755103'
    'es-ES'
  end

  language 'fi' do
    sha256 'c0101fc376c93b76fbfa4c8c2f1aa6406faa2a39a5e67436178099dc2dbdad8e'
    'fi'
  end

  language 'fr' do
    sha256 '61aa82c9f9e8566325aec906b4d5391a9530c8c4ad11b09199f17c462d72cf8f'
    'fr'
  end

  language 'gl' do
    sha256 '3f78c64ce01a84b49ffee19a52375fcbf48401cf6f18985df749330bc75623df'
    'gl'
  end

  language 'in' do
    sha256 '4b08ed142f846a655554c3809be636a5d65a12cf948cbce151915c7127fa0053'
    'hi-IN'
  end

  language 'it' do
    sha256 'ba78ef225d40b34cf730e64fdcc968d028c5e9a438fa04e9603a6db21d56b688'
    'it'
  end

  language 'ja' do
    sha256 'ca3a9ada2757a17cb23100195d74506c614c4d1d42ffe3f24a252f65133e74f2'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '73462768713430f47c1f689d35939fa8596ce17d758d1e867479bd53fd2bb4cf'
    'ko'
  end

  language 'nl' do
    sha256 'db096c282a79ea8e4ce3466eb9a6cdd9a2b8540ce36d4329a8cee572df5b0aa5'
    'nl'
  end

  language 'pl' do
    sha256 '14b4b0a09512be1dc7f37cdf586fdc2e74e53fcd993689292747ad74f339a732'
    'pl'
  end

  language 'pt-BR' do
    sha256 'eeeb1f415415ef2de09ffae26ec9c0b9459ae2a7c9db066cd167de98274df442'
    'pt-BR'
  end

  language 'pt' do
    sha256 'a00ada3775b03ccb7f32975df26a40afcbf17a22cf1ef38705a8e505f4ec4302'
    'pt-PT'
  end

  language 'ru' do
    sha256 'bb5eee549b0e7885e038b328075a083bca6fbad60d63533a1f8bce70cd5288b9'
    'ru'
  end

  language 'tr' do
    sha256 '2a6ce2dbdc2174cbc7d5a3ce42fb4e3390ba9d3838a0aee3b0287139cc7a389e'
    'tr'
  end

  language 'uk' do
    sha256 'faf9d2db5d966ed35a029b547a599a92a1a9b85b289f0691a2a35b6441b4e869'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2e089127b2646eeaf79459464ea37c4710b704ffc11b6c0b11aec29516ef2f37'
    'zh-TW'
  end

  language 'zh' do
    sha256 'e14129c38cd699b178e526d167ca778795ee0481a94c12a43c01b4b6c33c5b5e'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast "https://www.macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://download.mozilla.org/%3Fproduct=firefox-devedition-latest-ssl%26os=osx%26lang=#{language}"
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  auto_updates true
  conflicts_with cask: [
                         'firefox-beta',
                         'firefox-esr',
                       ]

  app 'Firefox Developer Edition.app'

  zap trash: [
               '/Library/Logs/DiagnosticReports/firefox_*',
               '~/Library/Application Support/Firefox',
               '~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.mozilla.firefox.sfl*',
               '~/Library/Caches/Firefox\ Developer\ Edition',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox\ Developer\ Edition',
               '~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla', #  May also contain non-Firefox data
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
