cask :v1 => 'webkit-nightly' do
  version 'r194173'
  sha256 '2968fd5062d4fd915bbf25ad1a7fbee62fd0dfd11cfce57ccd634c15b1bc9e95'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
