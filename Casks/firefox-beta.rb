cask 'firefox-beta' do
  version '48.0b6'
  sha256 '6aee3ce3b9bc2509d75d52120480915bd2f11d40df40c23f8ad2bc95691e4818'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=en-US"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/en-US/firefox/channel/#beta'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
