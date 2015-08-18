cask :v1 => 'webkit-nightly' do
  version 'r188532'
  sha256 'f8a43938f65d2a582b8ca82a0e14fef09f3da7180533033963b5662fdea6fa3a'

  name 'WebKit Nightly'
  url 'http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-r186963.dmg'
  homepage 'http://nightly.webkit.org/'
  license :unknown

  app 'WebKit.app'
end
