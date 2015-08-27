cask :v1 => 'webkit-nightly' do
  version 'r188964'
  sha256 '711ed1fed77e14fa1263b390dd0edf72408dd7e899807bc453b4c99b07dc29a1'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
