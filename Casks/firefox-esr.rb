cask 'firefox-esr' do
  version '60.0.2'

  language 'cs' do
    sha256 '583b9ebb7613aabd33a29feac303f094f3106b69afd5c83e1c46d421788c03e4'
    'cs'
  end

  language 'de' do
    sha256 '5771e026e543587f92dc245033e23b2f61d737857427ed8a00d0ebd6b8be90c6'
    'de'
  end

  language 'en-GB' do
    sha256 'f3f4cad9705088d1186d2802d9f12c96a89e16dbafa83b2217b56b763c12208b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 'd8d14cf9b7d2ccfffec022ad37c92eb366d8eaa7900c7c21e60e16cb0270c10f'
    'en-US'
  end

  language 'fr' do
    sha256 '6b7d12ac2a44377535dda6426f9f69bc29c7a176b14bae032b58ed1c83a5fe8e'
    'fr'
  end

  language 'gl' do
    sha256 '5820457dc7ca6be0662b3772058cba2a9a90cd6b58e9d897aaa01453c7810c8f'
    'gl'
  end

  language 'it' do
    sha256 '9c925ca5193dfa592c8465631352066a1421127130386b5b2a7c7849a895b47b'
    'it'
  end

  language 'ja' do
    sha256 'df9e5a42ca0a2ff81d6f1e8e440f79540201fb4ab535899a37cfd669c7855366'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'b2a49a01a5acf2c7fc28a4d1c8794dff3f0db04d11b6de153083974a402ae6ca'
    'nl'
  end

  language 'pl' do
    sha256 'c1f8f17854cc4dfd0189de1f0111f8209f42ddacc31cdb002bf0aa78c773c083'
    'pl'
  end

  language 'pt' do
    sha256 'd61da941f10ef2762f126fff1c1cb7a515dd41c73e11b6b364d76b8647a6c8aa'
    'pt-PT'
  end

  language 'ru' do
    sha256 '963c648a42d3965ce02c9e5646de4463beb3c620cb2dc8cd2d72089689f7f365'
    'ru'
  end

  language 'uk' do
    sha256 '5df17ac82ac064ce4fb29293a2dcca2a5892979125afe5a3302e8c43830ab89f'
    'uk'
  end

  language 'zh-TW' do
    sha256 '4da879e142d14b12e9b24ddfe8101cdb224229a8cbb6160bab734f8f855c1523'
    'zh-TW'
  end

  language 'zh' do
    sha256 '20217f4428c05499f9dbdd67c50d1ef39bf41e0a9ab7f05ba250143ea00ae09c'
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
