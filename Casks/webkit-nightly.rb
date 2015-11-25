cask :v1 => 'webkit-nightly' do
  version 'r192770'
  sha256 '0447e48e1edafa801795e348e52c1003b3ac961a219dccaf60626aa8536047a9'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
