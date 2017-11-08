cask 'royal-tsx-beta' do
  version '3.2.3.1000'
  sha256 '43f87aa4538ca192375f121b62d13084f05216482e3f0d6338b140b48f35eb42'

  url "https://royaltsx-v3.royalapplications.com/updates/royaltsx_#{version}.dmg"
  appcast 'https://royaltsx-v3.royalapplications.com/updates_beta.php',
          checkpoint: 'ca9f254c658ec2986e009a66ff965375fe824fd8cd2bd571371c755c9a65f6cd'
  name 'Royal TSX'
  homepage 'https://www.royalapplications.com/ts/mac/features'

  app 'Royal TSX.app'
end
