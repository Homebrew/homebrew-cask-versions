cask :v1 => 'royal-tsx-beta' do
  version '2.1.1.5'
  sha256 '57e2482389c62b9b2c3e8e8923dc144931d0a03a812b3809288c0ed1d95ffb80'

  url "http://v2.royaltsx.com/updates/royaltsx_#{version}.dmg"
  name 'Royal TSX'
  appcast 'http://v2.royaltsx.com/updates_beta.php'
  homepage 'http://www.royaltsx.com'
  license :freemium

  app 'Royal TSX.app'
end
