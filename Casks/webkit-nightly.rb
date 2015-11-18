cask :v1 => 'webkit-nightly' do
  version 'r192551'
  sha256 'bb510f0f15a6dcf8c7faac5dbfcb362eed8c7ed3e5e57f335d9cef12a034f9bc'

  url "http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-#{version}.dmg"
  name 'WebKit Nightly'
  homepage 'http://nightly.webkit.org/'
  license :oss

  app 'WebKit.app'
end
