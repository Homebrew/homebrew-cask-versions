cask 'firefox-zh-tw' do
  version '49.0.1'
  sha256 'f7678356d09bad2ec1b85771476b87f0e7df4a67eb947db20319a96b53000ee0'

  # mozilla.org was verified as official when first introduced to the cask
  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=zh-TW"
  name 'Mozilla Firefox'
  homepage 'https://mozilla.com.tw/firefox/new/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
