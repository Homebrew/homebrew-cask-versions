cask 'firefox-ja' do
  version '45.0'
  sha256 'b79a89101b7fabfe8adb89307c49af5353613e21b9fed05120c344c08b773e09'

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
