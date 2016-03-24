cask 'webkit-nightly' do
  version 'r198607'
  sha256 '7ed00fcc62a4f8ba334df551eba9e08cf54e8bf6abce2765b785061cc0c3e93c'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
