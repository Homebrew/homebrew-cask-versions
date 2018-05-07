cask 'royal-tsx-beta' do
  version '3.2.9.4'
  sha256 'ecbbd393a74c5adb3547948a5f45e701b08a071e9e604fb8d4403802ee801703'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'a9ffafb7b6dc91256208f442fb2ed69e242c7f91fd7a99d40fcc342f5089df97'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
