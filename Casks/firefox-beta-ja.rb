cask :v1 => 'firefox-beta-ja' do
  version '36.0b4'
  sha256 'a6a6eb7def1f23542e9babecc4dd99632939aaaa2573a331080f942a452574fe'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
