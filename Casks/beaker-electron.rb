cask 'beaker-electron' do
  version '1.5.1-0-g6e6bdd3'
  sha256 '9ddd90bc780c183e263a61bccb2b7dc74b042b1589c800b5f3a0c6922a8ce48a'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
