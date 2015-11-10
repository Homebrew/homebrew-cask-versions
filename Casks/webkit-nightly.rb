cask :v1 => 'webkit-nightly' do
  version 'r192199'
  sha256 'cc530a80f7a77cfdd025712f4ac8f5c6a6ca2e54e873eac952305d132b2b4992'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
