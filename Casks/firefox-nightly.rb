cask 'firefox-nightly' do
  version '61.0a1'
  sha256 :no_check # required as upstream package is updated in-place

  language 'cs' do
    'cs'
  end

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

  # download-installer.cdn.mozilla.net/pub/firefox/nightly was verified as official when first introduced to the cask
  url "https://download-installer.cdn.mozilla.net/pub/firefox/nightly/latest-mozilla-central#{language == 'en-US' ? '' : '-l10n'}/firefox-#{version}.#{language}.mac.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#nightly'

  app 'Firefox Nightly.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
