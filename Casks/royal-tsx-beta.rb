cask 'royal-tsx-beta' do
  version '3.2.1.1'
  sha256 'ed44741e99c2da21893e318350f8ee0060ebdac1c3fe478ddab221e0db3e83ea'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'a550e29d99d3078ce182133b39a2feeb983568bb3f57c2bc6138494158d79124'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/osx/features'

  app 'Royal TSX.app'
end
