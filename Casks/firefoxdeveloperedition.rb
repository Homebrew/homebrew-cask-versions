cask 'firefoxdeveloperedition' do
  version '56.0b8'

  language 'cs' do
    sha256 '3e3f01dc1e6a6ef00c720bc95ea8719fe81f7574e87bc16947e5c89ea2261547'
    'cs'
  end

  language 'de' do
    sha256 'c4c8c8c5ca2fd10fcf941637c07f1623c6cdee78f23d9f7db59d0f7203e1443d'
    'de'
  end

  language 'en', default: true do
    sha256 'fda509f5164dd555472633fa502193de75cbf841465d9d037d1d814f44a9c9ab'
    'en-US'
  end

  language 'ja' do
    sha256 'a31f01bb2018c03d0dae222255f1a6dc8b76b10cc41e87e3276e78282877ee57'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '16afe13bf1e51181b1873c5c125d22597b3865df283d58cb43934be7fde184c8'
    'ru'
  end

  language 'uk' do
    sha256 '4d45ddaded6257695e40bc0351c60b92f2bbac901799ab8c22d3d8d911f2dc72'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7e72629031a5353f29e4e0f4dbbd5a56635619f1e28bb53b64eeb644de7e078f'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5314aa05746acc6df1d28a3953392a605a5905079ccca66a0402446cc423cfb0'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: 'e805f4fa5a8f5139ea6c053bfb41e35003981356e2e32f229d5edf20a999b30a'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
