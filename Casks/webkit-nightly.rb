cask 'webkit-nightly' do
  version 'r203670'
  sha256 '168dd361208d54916862811a817ef7d316f45ef2f4f17df26783266200f35b88'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'https://webkit.org/downloads/'
  license :oss

  app 'WebKit.app'
end
