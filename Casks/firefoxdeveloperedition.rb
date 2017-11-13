cask 'firefoxdeveloperedition' do
  version '58.0b2'

  language 'cs' do
    sha256 'd4a9cc40416efaabe584b09c1b32e6b6c90f6fffa98c8b35d4fe6b574943ba4c'
    'cs'
  end

  language 'de' do
    sha256 'eee4e09c32c6a4eb9a83a8c6af15d369903df826b00799c872d6cac69110938b'
    'de'
  end

  language 'en', default: true do
    sha256 '2ae2e94b9c8b1ee4a066b6d4bad6a695a1ab493044879d8c015f9aece21b5007'
    'en-US'
  end

  language 'ja' do
    sha256 '6004b8ca8971c784b0a221bbe27bb4fe56ceee370c833af54d7db9c93c6dc32f'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '141b959e565df9ff2c6afbdcac09a417f92b20e474abf776c0b96f22fe762049'
    'ru'
  end

  language 'uk' do
    sha256 'dc0da526c9ddb95fd7a564dcce77349959de908dac10f1e832b0f53a6cb1f170'
    'uk'
  end

  language 'zh-TW' do
    sha256 '9ea0de65de8363bfa2538b74207d49d2982f138e172ce37e241f67c90b56235a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '597034b440f7715b4e173c6e1d4c6e9a3063f84462182c431e7b0b62933d4daf'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '4843d5b6e9fe641161ee8e474bbeb1351b1d2c5561ca0f62078ab487b44a4f5a'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
