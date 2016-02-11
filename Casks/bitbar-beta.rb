cask 'bitbar-beta' do
  version '1.5.0-beta2'
  sha256 'ec252f37b75dcd56dd89507f5c0bc73f15829b056a352e657b39d1c4662ecda2'

  url 'https://github.com/matryer/bitbar/releases/download/v1.5.0-beta2/BitBar.v1.5-beta2.zip'
  appcast 'https://github.com/matryer/bitbar/releases.atom',
          checkpoint: '473edefb61ee97c60d2ea3b5f928ad7ec5eb4dbe47a80166d43a87555981a10b'
  name 'BitBar'
  homepage 'https://github.com/matryer/bitbar/'
  license :mit

  app 'bitbar.app'
end
