cask 'firefox-esr-zh-cn' do
  version '45.0'
  sha256 '4310cf16c2b51b8a7f1bcd1fdd6db00f64a505f6f16c9ba7ead8722d08452ccf'

  url "https://download-installer.cdn.mozilla.net/pub/firefox/releases/#{version}esr/mac/zh-CN/Firefox%20#{version}esr.dmg"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/zh-CN/firefox/organizations/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
