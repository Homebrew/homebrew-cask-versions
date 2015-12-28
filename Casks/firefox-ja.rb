cask 'firefox-ja' do
  version '43.0.3'
  sha256 '85e942c01e6a6c5a72e12fb4ceb5c4954a13bfd9f41dba85b9208b07288bb8a6'

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
