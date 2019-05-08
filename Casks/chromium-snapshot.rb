cask 'chromium-snapshot' do
  version :latest
  sha256 :no_check

  # commondatastorage.googleapis.com/chromium-browser-snapshots/Mac was verified as official when first introduced to the cask
  url do
    require 'open-uri'
    version_url = 'https://commondatastorage.googleapis.com/chromium-browser-snapshots/Mac/LAST_CHANGE'
    version = URI(version_url).open.read.scan(%r{^\d+$}).flatten.first
    "#{version_url[%r{.+(?=LAST_CHANGE)}]}#{version}/chrome-mac.zip"
  end
  name 'Chromium'
  homepage 'https://www.chromium.org/getting-involved/download-chromium'

  app 'chrome-mac/Chromium.app'

  zap trash: [
               '~/Library/Preferences/org.chromium.Chromium.plist',
               '~/Library/Caches/Chromium',
               '~/Library/Application Support/Chromium',
               '~/Library/Saved Application State/org.chromium.Chromium.savedState',
             ]
end
