cask 'firefox-beta' do
  version '48.0b10'
  sha256 'e3409b750f3ba7a48051ca62ed4c59e91d85d91be03503e6b7f902b1b5d4f324'

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
