cask 'firefox-zh-tw' do
  version '49.0'
  sha256 '641cf4abb55b09144eaaf6c5d53d573feecb95f834d1b742e7226692529137b9'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
