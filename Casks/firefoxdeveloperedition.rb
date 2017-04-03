cask 'firefoxdeveloperedition' do
  version '54.0a2'

  language 'en', default: true do
    sha256 '910bde849efba3e0064997d357661ba6b71820533b095886521b770e30b09bbb'
    'en-US'
  end

  language 'ja' do
    sha256 'a3395260b5e88c5719ee72c8b8e69d4ae9fc15406e12514b1fb99de8eb75fff2'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 'c00bacb976dcd221eb06395993297db1f77aa97d09569d2378905d9b95e68a25'
    'ru'
  end

  language 'uk' do
    sha256 '7a944a364b785058e760df52ad27d50ae4c70b4eee2cd32852f49ffdd55703e1'
    'uk'
  end

  language 'zh-TW' do
    sha256 '1caf8635a2fd374491b9d4affc8eed31a5704f5d60fb74ce38476a637e176888'
    'zh-TW'
  end

  language 'zh' do
    sha256 '9694d6206ca642b8e6acc6ef160f72afe4528cb31eeac4bd8be44efca0fc9a46'
    'zh-CN'
  end

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora#{language != 'en-US' ? '-l10n' : ''}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  auto_updates true

  app 'FirefoxDeveloperEdition.app'
end
