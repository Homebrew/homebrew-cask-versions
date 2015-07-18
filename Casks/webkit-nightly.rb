cask :v1 => 'webkit-nightly' do
  version 'r186963'
  sha256 '54c619407395efcf7bba0b517b036b8174cfe92b7e998f8b1f1571bd632f0516'

  name 'WebKit Nightly'
  url 'http://builds.nightly.webkit.org/files/trunk/mac/WebKit-SVN-r186963.dmg'
  homepage 'http://nightly.webkit.org/'
  license :unknown

  app 'WebKit.app'
end
