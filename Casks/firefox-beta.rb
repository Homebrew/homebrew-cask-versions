cask 'firefox-beta' do
  version '52.0b7'

  language 'de' do
    sha256 '052c84ab84a3277d2556952c64b97282780ecdd570385ad7f8a2af9ad0667e06'
    'de'
  end

  language 'en-GB' do
    sha256 '717a52c999b797e2a4ef6ab67f375821caa518250176215c391fd7501d21f524'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'ad51135a5492260d9a0f1936e008c740ef4ec191e3e9efc91417e75854e21ab6'
    'en-US'
  end

  language 'fr' do
    sha256 '2140376ee7b7ac50d5def61d88b4da55db734c391a1ee371dc1fae78a8b9179a'
    'fr'
  end

  language 'gl' do
    sha256 'c37124db8c67f0a86744a438dec7c2b4c8507294219358de55defd143389cd3e'
    'gl'
  end

  language 'it' do
    sha256 'c8c3228502aaad4d279c5b053932de9b92369570001f35df91e7cb67e85245fa'
    'it'
  end

  language 'ja' do
    sha256 'aa3ec8f6d65a458e596e1e4e5beb8977fd896e122cc8965c3fcbeb6711dff5b0'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '1258db31b44c0da392fc1573740aa09773fc58b536ae17509e6bc4d98255cd87'
    'nl'
  end

  language 'pl' do
    sha256 'f2489e0fc6bef11ef3572c0bcc897dbf9fc2563cdc567407aefffd965d503218'
    'pl'
  end

  language 'pt' do
    sha256 'a6485380ec005ad008e4bc07dd10f00501e18545dcbd45abdec6b38d892f3ec6'
    'pt-PT'
  end

  language 'ru' do
    sha256 '5727d0ecc406a927740feb71b29067d3db762d0ba3bf86f2dfec38863b633fa4'
    'ru'
  end

  language 'uk' do
    sha256 '652013aa21e55c1a1482e8cd5be1524247e93a0e546e052856a2351dc2d19e0f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '71462b08a9ca2662b10ece98996c3a3e59e0b0e6f5d2cddcbef18a572d1ba51a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '7bc4d667b9b0055e98dccc3b5de7809e0d44766802806161a9c234799444fe52'
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
