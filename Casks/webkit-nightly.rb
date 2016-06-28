cask 'webkit-nightly' do
  version 'r202436'
  sha256 '88df150ee5213fa93bc5b70ce758faa33ca908e049bd52d428c927a203476677'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
