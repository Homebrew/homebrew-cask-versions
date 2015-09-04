cask :v1 => 'webkit-nightly' do
  version 'r189313'
  sha256 '58cbce288501da7b9c250c5eebfe60dc41d8d9b84bd20fd11a5b15ee3fb02e12'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
