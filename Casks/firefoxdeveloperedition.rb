cask 'firefoxdeveloperedition' do
  version '54.0a2'

  language 'en', default: true do
    sha256 '910bde849efba3e0064997d357661ba6b71820533b095886521b770e30b09bbb'
    'en-US'
  end

  language 'ja' do
    sha256 'ae7a9f27cfb0e6e1aacdef07b6bec183247bc2263bc89e9b1fef266dc000910f'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '3888bc01b1b5a8bf6516b5d4b26630dfe2161d1c4f883d4a5b73cf8e73aeaa80'
    'ru'
  end

  language 'uk' do
    sha256 '2c2d016385412aa4a3d1e01b9366d87c066672a5609f012951372582406c0ef5'
    'uk'
  end

  language 'zh-TW' do
    sha256 '6d99c4f763506b3272e07dcd7126582eabaa56968c80ceb83ae8a046f28d006a'
    'zh-TW'
  end

  language 'zh' do
    sha256 '6e170e212e358095d590ccce1700a2238368f35234b9518abcf143cfa4f2e29a'
    'zh-CN'
  end

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora#{language != 'en-US' ? '-l10n' : ''}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  auto_updates true

  app 'FirefoxDeveloperEdition.app'
end
