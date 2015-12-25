cask 'firefox-ja' do
  version '43.0.2'
  sha256 'a3f77887f6a386f77a7cbd0a51c9b1b88184141bb2f2e03a1a92e921ba998261'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap :delete => [
                  '~/Library/Application Support/Firefox',
                  '~/Library/Caches/Firefox',
                 ]
end
