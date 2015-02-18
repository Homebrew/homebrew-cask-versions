cask :v1 => 'firefox-beta-ja' do
  version '36.0b5'
  sha256 'db34c164fa02a6c66cabac9f20d11ec7a74334742ccffb38b448a70cd8c448b1'

  url "https://download.mozilla.org/?product=firefox-#{version}&os=osx&lang=ja-JP-mac"
  homepage 'http://www.mozilla.org/ja/firefox/channel/beta'
  license :mpl

  app 'Firefox.app'
end
