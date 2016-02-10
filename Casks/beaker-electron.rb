cask 'beaker-electron' do
  version '1.5b1-0-g0d1b2b0'
  sha256 '29a2cf921f897c459183a58de436ba68e9b9771ed690a2fe440f9ae0dff5247a'

  # d299yghl10frh5.cloudfront.net was verified as official when first introduced to the cask
  url "https://d299yghl10frh5.cloudfront.net/beaker-notebook-#{version}-electron-mac.dmg"
  name 'Beaker Electron'
  homepage 'http://beakernotebook.com/'
  license :apache

  app 'Beaker.app'
end
