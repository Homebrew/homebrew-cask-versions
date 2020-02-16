cask 'firefox-developer-edition' do
  version '74.0b2'

  language 'cs' do
    sha256 'cf24248051a3b6d496263c2f10430b34c097bc45e5a80bb1ba52e4b93bba0eec'
    'cs'
  end

  language 'de' do
    sha256 '540828a7a1052612089becd6009193ae2f168ecf01bcd5ad8741bf667e6081c0'
    'de'
  end

  language 'en-GB' do
    sha256 '1bdb8b364188f6b75733f8d730f44d064a022f800f7f9256bba00eb5727e2b08'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '4ec6e03b09e9012b4e94ead9c7ac5422e25a1fc3722bf9365f0837e8b1ea5092'
    'en-US'
  end

  language 'eo' do
    sha256 'c76cc4fb663ec927b8a40748a6709bc108986412485492fdd019d333a34d94a8'
    'eo'
  end

  language 'es-AR' do
    sha256 'cebb0110e02c47d847da71459e97030e8f82cf88b6314eb2786f9803bd8e0aaa'
    'es-AR'
  end

  language 'es-CL' do
    sha256 '9f21eda146998d6b478d079d35a61fe34b3181adc52cc99cc2b99e394dc31b15'
    'es-CL'
  end

  language 'es-ES' do
    sha256 '071b8d818000705869ed0f35df25f3bf30c2dce6fe62dc895aa2dd9969f8d910'
    'es-ES'
  end

  language 'fi' do
    sha256 '32e9673dd14fac130c184a5472be736bd645428e5defcdba26e498d8073b430a'
    'fi'
  end

  language 'fr' do
    sha256 'c60e94aa36a2ac680f20b08daea31dedc5ca5236848661022ed223cfe89fb32f'
    'fr'
  end

  language 'gl' do
    sha256 'a607f1fc84eb044edfa302d1e89506750c2d2e9c5cb9d710b29811a8a398d862'
    'gl'
  end

  language 'in' do
    sha256 '7ee1b559ef34b74cf399cb44790685dba36923011e00cc27fda7e2ae4562a1f9'
    'hi-IN'
  end

  language 'it' do
    sha256 '543f84710f94926c7d4abe9c27ee29d1084102b796a6ed52001870fc2b8c7e6f'
    'it'
  end

  language 'ja' do
    sha256 '28635f57c7f1a284beed811c270d6f299c6d0b2d133ae9df0a48c0350e0a7be2'
    'ja-JP-mac'
  end

  language 'ko' do
    sha256 '0142c22cc007f8d9a4c7a837a39fe37654b02fcf9cb2469f35fb740aa346770e'
    'ko'
  end

  language 'nl' do
    sha256 '2ec88c15185640a2580236e52eace46a983292c43938fb9e36a08f8f04df9b99'
    'nl'
  end

  language 'pl' do
    sha256 'b623140329ab1c6d9404e809ede5799c329a78fd1d355801796fb104059a8f02'
    'pl'
  end

  language 'pt-BR' do
    sha256 'c320b4b604be9cf57f7b7cd106c61f625d62aeaf02e1fc8126c91c4aa2ff88db'
    'pt-BR'
  end

  language 'pt' do
    sha256 '91001ac0d2748019bff235656031bcd6af1e37c920ef068a971e1081a19bd81f'
    'pt-PT'
  end

  language 'ru' do
    sha256 '74747b90a5c3c3bb804e1ab6bc00692b7290c81fee0fb6332195e8d91c373605'
    'ru'
  end

  language 'tr' do
    sha256 '2437b1b46645670f8599f371389d87c4cfdbcf95377ab6ab3082f1413ef937be'
    'tr'
  end

  language 'uk' do
    sha256 'f239ee957ec6e108bf542d9e76cedc3303093b66f02a927b48caa5583036560f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2a77a83146fa58b36b6dc97ca2f71fb3a00b40e7208a53d33e9eae05a33a4f5c'
    'zh-TW'
  end

  language 'zh' do
    sha256 'f5fdc916052f7dd128bee073c02789bd18c75484164912da36f3a61337db3bc7'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
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
               '~/Library/Caches/Firefox Developer Edition',
               '~/Library/Caches/Mozilla/updates/Applications/Firefox Developer Edition',
               '~/Library/Preferences/org.mozilla.firefoxdeveloperedition.plist',
             ],
      rmdir: [
               '~/Library/Application Support/Mozilla',
               '~/Library/Caches/Mozilla/updates/Applications',
               '~/Library/Caches/Mozilla/updates',
               '~/Library/Caches/Mozilla',
             ]
end
