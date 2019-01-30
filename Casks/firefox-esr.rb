cask 'firefox-esr' do
  version '60.5.0'

  language 'cs' do
    sha256 'b135d8a9221f2c437cb19c79aa9060b6c669aabfb84e1b06d3fb7e2ee22a9d29'
    'cs'
  end

  language 'de' do
    sha256 '483c72502d08e16440447524a614260053dda7c9bb29696d1dcc3ddf5b6eb0b7'
    'de'
  end

  language 'en-GB' do
    sha256 'd11942990254ee15bfc787ae10f7435052854e9f8b3e8b3ff4a69f9e3f831f0b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '773e2c003623645e26b6c6afb1c337967ca008f6e856eee4c89f8d637ae1461c'
    'en-US'
  end

  language 'fr' do
    sha256 '17b0afbe5a24196e4c11ed6bc7b0690d6a5acdece49011096fd033021db9c9b2'
    'fr'
  end

  language 'gl' do
    sha256 '0b0c9bc5fb9fd49462e3cbedcd3a224a0aa6598bb9e59bff05b55f066447e26d'
    'gl'
  end

  language 'it' do
    sha256 '80d30f74b97fc517fc4d90aa25b689c0ba3645c7974fff6716a6e77b6f7e9d1f'
    'it'
  end

  language 'ja' do
    sha256 '0158a6e2bab16b0efe29555380891f96b103a50ff311870352a88c3ea6abe62d'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '3a9e0e3e811a13dc4541dbe4676cd257493f0f288e7dd2e1e28b9e0b74ccf569'
    'nl'
  end

  language 'pl' do
    sha256 '5aeccadf24cb2f930ae10f4b39aac5a6012de908949a77fe0af2219b83dfb83b'
    'pl'
  end

  language 'pt' do
    sha256 'ec238df899f8550824781cf35c248155b0446d5d9f2fedae2627802bf1e82853'
    'pt-PT'
  end

  language 'ru' do
    sha256 '45e67e8e37e9504028a4ea0e418fe951224b4cb41b1ae529e1f944d9b1f1c5fa'
    'ru'
  end

  language 'uk' do
    sha256 'f0c376c664a3b60ac7a1f9227965d09ac47c3f1eebcc664699879ddfe2b844e7'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7fd11e0292ed459a37ae7944f68ef02433ff3aa3bb47003b4424d62bb6d82a64'
    'zh-TW'
  end

  language 'zh' do
    sha256 '8906365e052cf333fc8260128e6836e349f0ec835bc2f530caaa1fa52ea1aea9'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/firefox/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/#{language}/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox ESR'
  name 'Mozilla Firefox Extended Support Release'
  homepage 'https://www.mozilla.org/firefox/organizations/'

  conflicts_with cask: [
                         'firefox',
                         'firefox-beta',
                       ]

  app 'Firefox.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
