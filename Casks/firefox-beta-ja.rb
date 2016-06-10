cask 'firefox-beta-ja' do
  version '48.0b1'
  sha256 '6045f2eda7ad543c6fd62e46e3a8364274fa1cbe7a0752061486aa29f3f1e273'

  url "https://download.mozilla.org/?product=firefox-#{version}-SSL&os=osx&lang=ja-JP-mac"
  name 'Mozilla Firefox'
  homepage 'https://www.mozilla.org/ja/firefox/channel/'
  license :mpl

  app 'Firefox.app'

  zap delete: [
                '~/Library/Application Support/Firefox',
                '~/Library/Caches/Firefox',
              ]
end
