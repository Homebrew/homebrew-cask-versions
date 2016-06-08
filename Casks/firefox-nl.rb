cask 'firefox-nl' do
  version '47.0'
  sha256 'a44ba4872f93294d5c3262021024329ab592a780fbea28bd13e2f7cca54b1558'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=nl"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/nl/firefox/desktop'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
