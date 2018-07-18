cask 'firefox-nightly' do
  version :latest
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
  url do
    require 'open-uri'
    base_url = 'https://download-installer.cdn.mozilla.net/pub/firefox/nightly'
    builds_url = "#{base_url}/latest-mozilla-central#{language == 'en-US' ? '' : '-l10n'}/"
    latest_build_filename = URI(builds_url).open.read.scan(%r{<td><a href="/pub/firefox/nightly/([^\"]+\.mac\.dmg)">}).flatten.grep(%r{\.#{language}\.mac\.dmg}).first
    "#{base_url}/#{latest_build_filename}"
  end
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/firefox/channel/desktop/#nightly'

  app 'Firefox Nightly.app'

  zap trash: [
               '~/Library/Application Support/Firefox',
               '~/Library/Caches/Firefox',
             ]
end
