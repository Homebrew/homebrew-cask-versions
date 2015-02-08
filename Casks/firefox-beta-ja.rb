cask :v1 => 'firefox-beta-ja' do
  version '36.0b7'
  sha256 'e0062c29d65560587e4b591983a2876fcf810565bbbb64933db8ae71720655e7'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
