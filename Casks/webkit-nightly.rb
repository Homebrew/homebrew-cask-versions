cask 'webkit-nightly' do
  version 'r205159'
  sha256 'aece65c2b855f0ca3c915d73d7f84ed4e0d54ed8ecf777266b8a767e4d20389f'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
