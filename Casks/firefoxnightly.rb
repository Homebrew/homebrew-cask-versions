cask 'firefoxnightly' do
  version '52.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  language 'en', default: true do
    'en-US'
  end

  language 'ja' do
    'ja-JP-mac'
  end

  language 'ru' do
    'ru'
  end

  language 'uk' do
    'uk'
  end

  url "https://ftp.mozilla.org/pub/firefox/nightly/latest-mozilla-central#{language == 'en-US' ? '' : '-l10n'}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://nightly.mozilla.org/'

  app 'FirefoxNightly.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
