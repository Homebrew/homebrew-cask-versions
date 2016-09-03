cask 'webkit-nightly' do
  version 'r205370'
  sha256 '45038257e5c79ce19e6a6d58cae342f25bac7bcc41f8f5cd1e7fed5ed8a186db'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
