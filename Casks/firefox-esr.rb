cask 'firefox-esr' do
  version '52.7.0'

  language 'cs' do
    sha256 '4e78cdf384264709260f133277f1b7ee9fe5e6726f200ef3080dc60f15bcb892'
    'cs'
  end

  language 'de' do
    sha256 'e7f9d168f48048505e8317111302cfa1b85c3c52b35a056b43cc801346d86394'
    'de'
  end

  language 'en-GB' do
    sha256 '009fa007f4a502b3117a69cb431996f665cac4ca8abf7d0b5e6e60bbe8c7939b'
    'en-GB'
  end

  language 'en', default: true do
    sha256 '6cf7cbc0fe212f76a4eb2106d7c5a13cc661e0a689470f9b5f4f0ba43332989c'
    'en-US'
  end

  language 'fr' do
    sha256 '3af49d3bb8065d928e08629f12dbc91760287d4436af385287eb613c1dcc37fb'
    'fr'
  end

  language 'gl' do
    sha256 'b353f8edd7c6f1d439971b4f6525a81239e5fb15a7c5f6d96c6f5a5088d1e75c'
    'gl'
  end

  language 'it' do
    sha256 '60119a067bfdd8a2adcd2b597e230b25fa63335384b5a6166c49758f796cf223'
    'it'
  end

  language 'ja' do
    sha256 '5f0dfabd41cf7797269285840b69da633d0530cddbc7a9db72d4deaaf0082809'
    'ja-JP-mac'
  end

  language 'nl' do
    sha256 'a42cf6964e2e7a34ba262b6ee99844897bcd4691d2836b62b9991937807f9e5d'
    'nl'
  end

  language 'pl' do
    sha256 'b236676b897ee4f6a5dc7a318ae3384eaafaef60cbc4869537b5d1ad13c80d23'
    'pl'
  end

  language 'pt' do
    sha256 '7d7825d596cc1f64a40383a7bdbd0a651b6dc029269cc2c7f6484c669001cb14'
    'pt-PT'
  end

  language 'ru' do
    sha256 '49412f6e33c0ed998455c04cf7bf4da74855cdda1792fca8b67211aa13ca06cb'
    'ru'
  end

  language 'uk' do
    sha256 'c9adfa519fbe91738d7d937c90d3908a097fce35ae448d53a3c40d3b0128c595'
    'uk'
  end

  language 'zh-TW' do
    sha256 '2cf5298288f37058333745f2ef3bc29f4e91d7e46efff4f86d3e657cbcdafe8f'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd43f032da0f4408c5af79148689984244e2dcbb4f16ac532414b25dff273209e'
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
