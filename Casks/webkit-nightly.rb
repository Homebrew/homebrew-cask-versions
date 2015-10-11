cask :v1 => 'webkit-nightly' do
  version 'r190840'
  sha256 '3fa422b91500ed397ea2fa639a14ddc0c501fff5bcd77162c342a02b84d9e8aa'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
