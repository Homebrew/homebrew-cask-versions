cask 'firefox-esr' do
  version '52.7.3'

  language 'cs' do
    sha256 '54f47bedecdad19d2ab24cb4ffb61b113cecbb500e3f32dc2d2e835cb0a5cf17'
    'cs'
  end

  language 'de' do
    sha256 '108f39b664d65b4db7d606d973f2cba9a38154eb366fa21a7582bb6f757892a7'
    'de'
  end

  language 'en-GB' do
    sha256 'b2a0587e6348b594b320eca4799fe98ed9897f743901be1a4191e148bd4a44ac'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '2073a57394c34223157a015aa6de8235b710d6661b6b22f8aa309053aea1b642'
    'en-US'
  end

  language 'fr' do
    sha256 'c0c94162212dc1f68ac662108c76505c4914b5a10991c77fa0045bf170aa800f'
    'fr'
  end

  language 'gl' do
    sha256 '8e6f9f8f9903e5fa04e1ccaae81f65c3d6c13b84483241311f56175c241935b8'
    'gl'
  end

  language 'it' do
    sha256 'f0e0e0ea0bd13350601fe385823e7ebd89668a5f0416c815ce870e749a9c9422'
    'it'
  end

  language 'ja' do
    sha256 'd17833d39802c9b088d66ec3150519e7a80defbeb32ab30f4950f4bc3c227273'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 '06a79db6d1b3cdc6972f1fdc1b1ccdf8d02a2ab3f19449a201578a8252ce3278'
    'nl'
  end

  language 'pl' do
    sha256 'e312d6d9bcaed3d4529873141cf441509fdfc9bee93467a215603e84e863d747'
    'pl'
  end

  language 'pt' do
    sha256 '7316b27f20988a76e97e608e6f6a5153d31e7fef27040a7abd37160ee5d5f964'
    'pt-PT'
  end

  language 'ru' do
    sha256 '630c23d11c9d593ee71609ec982eedecd8cec5ed544d5d53fd7305a307544990'
    'ru'
  end

  language 'uk' do
    sha256 '8fc59275b5d98ec1a5a4c8aa690a4d23bfa0fce31dd92fb0ebfae690d8a6480c'
    'uk'
  end

  language 'zh-TW' do
    sha256 '579b094895dd1f67f8a920e5473fe4e0ab6288e6979268e978e026452341c3f8'
    'zh-TW'
  end

  language 'zh' do
    sha256 '3328e18babfec873636d395b21a2e2ef1b827bdf76f778f5b97554e672373549'
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
