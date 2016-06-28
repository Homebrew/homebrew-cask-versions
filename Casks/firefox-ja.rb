cask 'firefox-ja' do
  version '47.0.1'
  sha256 'ed499d5f5ebdfc73bed81d6823369fcbf4853eeabfe120fdaf52ef553351c8f2'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/desktop/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
