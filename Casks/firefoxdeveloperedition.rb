cask 'firefoxdeveloperedition' do
  version '57.0b1'

  language 'cs' do
    sha256 '7f0c7480ffb52535e68b67b082b5f3b9437e0118e8b077a53df738165b7c4058'
    'cs'
  end

  language 'de' do
    sha256 'b98755e89860bb2ea242ce98033ba7239d39ace66730edd14a92b8c4829ab260'
    'de'
  end

  language 'en', default: true do
    sha256 '363cc37cd814de36dac625fa2724afdc52a163192e4a27980f29f8a08a0a981f'
    'en-US'
  end

  language 'ja' do
    sha256 '67599e99b58f41a0979e4267e31e6be75c0bb8733ab713d6d9b017dab4339fe5'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '3dd7349f9c3dce43f5be269102466308358654c3401b59c54926683b998546de'
    'ru'
  end

  language 'uk' do
    sha256 'fc9d8e77e4a6dcbd6a3170c700f73b44b1040edb0c3736c42948dfeef53604df'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8d7adb051faca700506935133264371591e1f91699e111bb1e0539e19d78d32d'
    'zh-TW'
  end

  language 'zh' do
    sha256 'd94d8421b4d4709049929b2f7d6cd9517620c15ae282ada0999a11de135edc9a'
    'zh-CN'
  end

  # download-installer.cdn.mozilla.net/pub/devedition/releases was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/devedition/releases/#{version}/mac/#{language}/Firefox%20#{version}.dmg"
  appcast 'https://download-installer.cdn.mozilla.net/pub/devedition/releases/',
          checkpoint: '407e2cacaab71329169aa6caee54dbfcbfe91fa121b5e75e95a1e158a44fab04'
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  app 'FirefoxDeveloperEdition.app'
end
