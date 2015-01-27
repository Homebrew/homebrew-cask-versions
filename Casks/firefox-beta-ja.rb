cask :v1 => 'firefox-beta-ja' do
  version '36.0b3'
  sha256 '3c7a17ffad3eac9e30f1c6fcd0e216cf2b55f63f0a6d9d598a56cb6cbd018e90'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
