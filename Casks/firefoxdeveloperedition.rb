cask 'firefoxdeveloperedition' do
  version '54.0a2'

  language 'en', default: true do
    sha256 '8b7ab33655e388607f71267198f0f03de576dcc43f232231873fd8c2c224c649'
    'en-US'
  end

  language 'ja' do
    sha256 '9edab5376f2aeca6f0279ee0e5069d427468d918d9eb41f4ee1d8f709a3c6f13'
    'ja-JP-mac'
  end

  language 'ru' do
    sha256 '6b0d5852a13d7281c74d0d696fe4506a1cab6ea83869b2959a09bae0e13ccdd2'
    'ru'
  end

  language 'uk' do
    sha256 'e4724e560ee47b1792c89b65b4bc3684170ece5535046a4c71afef7bc0079f49'
    'uk'
  end

  language 'zh-TW' do
    sha256 '8d4f097b70623786d2ae53e7d055a4aa29249de01e3433d4b71e347e60921c53'
    'zh-TW'
  end

  language 'zh' do
    sha256 '5d460592d4b3170beccaede98997a4ff6a5537a909106852b33ca6415bbf742e'
    'zh-CN'
  end

  # mozilla.net was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-aurora#{language != 'en-US' ? '-l10n' : ''}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox Developer Edition'
  homepage 'https://www.mozilla.org/firefox/developer/'

  auto_updates true

  app 'FirefoxDeveloperEdition.app'
end
