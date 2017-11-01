cask 'firefoxdeveloperedition' do
  version '57.0b13'

  language 'cs' do
    sha256 '21c1cd568631ffd4ff7a51cb7baf5e6b7a491656cd2d91f4f362617dcccbd7d6'
    'cs'
  end

  language 'de' do
    sha256 'e28c254b18259965d70f75b3935385f1e29fba557ff0e5d13d86ad423163a711'
    'de'
  end

  language 'en', default: true do
    sha256 '497f588ad2093b5710a3be14685cab99f6e1e84bc8f9e277f62bf6596578c4b0'
    'en-US'
  end

  language 'ja' do
    sha256 '6b8d9c69a0bf6d22a393712dc2e859cba57e83ea0e5f6bc6a16a00a573308e94'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 'eb679afce9e68ed225efe03cb457e686e30c98f5ef86a71a4b258ba8dd37a4fd'
    'ru'
  end

  language 'uk' do
    sha256 '9897cdd1fc1c1ad9749a66b0c4f18f4252c0e3dd19cc549a05ccf37fc973c6b9'
    'uk'
  end

  language 'zh-TW' do
    sha256 '7bf36c51f3547fc63d432f5b7e9ffcda4229e410803f2deb4db55c5205a535ac'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd30f3ecfb91832feb333abdf2247122dfd3d878ee3c96f168b5c4f3c16c820fb'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '1e7430d4bd2499648cf51fa5c563d65e3dff7740d408bb868763ee5ade2e1dba'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
