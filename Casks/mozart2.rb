cask 'mozart2' do
  version '2.0.0-alpha.0+build.3787.b59232b'
  sha256 '27ff7064ec4c7c40b69a02e8a86c8fbfdfc43e5c0dfb5dfc4f584640c0354e86'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/mozart-oz/mozart2-#{version}-x86_64-darwin.dmg"
  name 'Mozart'
  homepage 'https://mozart.github.io/'
  license :oss

  app 'Mozart2.app'
end
